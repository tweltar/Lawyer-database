CREATE DATABASE `lawyers`; 
/*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ 
/*!80016 DEFAULT ENCRYPTION='N' */
--
-- Table structure for table `division`
--
DROP TABLE IF EXISTS `division`;

CREATE TABLE `division` (
  `id` int NOT NULL AUTO_INCREMENT,
  `division` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `division_UNIQUE` (`division`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='List of Myanmar divisions';

--
-- Table structure for table `lawyer`
--

DROP TABLE IF EXISTS `lawyer`;

CREATE TABLE `lawyer` (
  `lawyer_id` int NOT NULL AUTO_INCREMENT,
  `lawyer_name` varchar(45) DEFAULT NULL,
  `office` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `ph_1` varchar(45) DEFAULT NULL,
  `ph_2` varchar(45) DEFAULT NULL,
  `ph_3` varchar(45) DEFAULT NULL,
  `ph_4` varchar(45) DEFAULT NULL,
  `ph_5` varchar(45) DEFAULT NULL,
  `division_id` int DEFAULT NULL,
  `township` varchar(45) DEFAULT NULL,
  `town` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`lawyer_id`),
  KEY `division_id` (`division_id`),
  CONSTRAINT `lawyer_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1083 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Lawer information';