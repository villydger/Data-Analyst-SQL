-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 08, 2026 at 11:05 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `item_sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `city` text COLLATE utf8mb4_unicode_ci,
  `signup_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `city`, `signup_date`) VALUES
(11, 'Maria Santos', 'Manila', '2023-12-11'),
(12, 'Jose Dela Cruz', 'Cebu City', '2023-05-03'),
(13, 'Ana Mendoza', 'Davao City', '2022-02-12'),
(14, 'Luis Ramirez', 'Quezon City', '2023-04-17'),
(15, 'Carmen Reyes', 'Baguio', '2023-02-09'),
(16, 'Roberto Tan', 'Iloilo City', '2022-09-14'),
(17, 'Grace Villanueva', 'Pasig', '2023-06-30'),
(18, 'Eduardo Lim', 'Cavite', '2023-07-15'),
(19, 'Jenny Cruz', 'Makati', '2022-02-12'),
(20, 'Paulo Navarro', 'Taguig', '2023-08-10'),
(1, 'Maria Santos', 'Manila', '2023-12-01'),
(2, 'Jose Dela Cruz', 'Cebu City', '2023-05-03'),
(3, 'Ana Mendoza', 'Davao City', '2022-11-22'),
(4, 'Luis Ramirez', 'Quezon City', '2023-04-17'),
(5, 'Carmen Reyes', 'Baguio', '2023-02-09'),
(6, 'Roberto Tan', 'Iloilo City', '2022-09-14'),
(7, 'Grace Villanueva', 'Pasig', '2023-06-30'),
(8, 'Eduardo Lim', 'Cavite', '2023-07-15'),
(9, 'Jenny Cruz', 'Makati', '2022-02-12'),
(10, 'Paulo Navarro', 'Taguig', '2023-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `product_id`, `quantity`, `order_date`) VALUES
(32, 11, 18, 1, '2024-02-03'),
(33, 11, 17, 3, '2024-03-21'),
(34, 12, 15, 1, '2024-01-27'),
(35, 12, 12, 2, '2024-02-10'),
(36, 13, 19, 2, '2024-03-05'),
(37, 13, 20, 1, '2024-04-11'),
(38, 14, 13, 1, '2024-04-18'),
(39, 14, 14, 1, '2024-05-02'),
(40, 15, 16, 1, '2024-06-01'),
(41, 15, 20, 3, '2024-06-12'),
(42, 16, 18, 2, '2024-07-03'),
(43, 17, 17, 1, '2024-08-07'),
(44, 17, 13, 2, '2024-08-22'),
(45, 18, 12, 1, '2024-09-01'),
(46, 18, 15, 2, '2024-09-11'),
(47, 19, 14, 1, '2024-09-21'),
(48, 19, 16, 3, '2024-10-05'),
(49, 20, 18, 1, '2024-10-10'),
(50, 20, 20, 2, '2024-10-15'),
(1, 1, 1, 2, '2023-07-10'),
(2, 1, 2, 1, '2023-08-02'),
(3, 1, 9, 3, '2023-08-15'),
(4, 2, 3, 1, '2023-03-11'),
(5, 2, 5, 4, '2023-03-25'),
(6, 2, 7, 1, '2023-06-01'),
(7, 3, 6, 2, '2023-02-20'),
(8, 3, 1, 1, '2023-03-01'),
(9, 3, 8, 1, '2023-07-12'),
(10, 4, 4, 1, '2023-04-18'),
(11, 4, 9, 2, '2023-05-09'),
(12, 4, 10, 5, '2023-05-19'),
(13, 5, 2, 1, '2023-01-25'),
(14, 5, 5, 2, '2023-03-07'),
(15, 5, 6, 1, '2023-06-22'),
(16, 6, 7, 3, '2023-01-15'),
(17, 6, 8, 1, '2023-02-14'),
(18, 7, 9, 2, '2023-07-04'),
(19, 7, 3, 1, '2023-08-10'),
(20, 7, 1, 1, '2023-09-12'),
(21, 8, 10, 6, '2023-06-05'),
(22, 8, 5, 3, '2023-06-18'),
(23, 9, 4, 1, '2023-05-23'),
(24, 9, 2, 2, '2023-06-30'),
(25, 9, 9, 1, '2023-07-03'),
(26, 10, 8, 1, '2023-08-20'),
(27, 10, 1, 2, '2023-08-25'),
(28, 10, 3, 1, '2023-09-01'),
(29, 10, 6, 2, '2023-09-10'),
(30, 10, 9, 1, '2023-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` text COLLATE utf8mb4_unicode_ci,
  `category` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `price`) VALUES
(11, 'Notebook Pack', 'Stationery', 400),
(12, 'Wireless Mouse', 'Electronics', 750),
(13, 'Bluetooth Speaker', 'Electronics', 1800),
(14, 'Office Chair', 'Furniture', 4200),
(15, 'Standing Desk', 'Furniture', 8500),
(16, 'Ceramic Mug', 'Kitchenware', 250),
(17, 'Cookware Set', 'Kitchenware', 3200),
(18, 'Running Shoes', 'Apparel', 3100),
(19, 'Denim Jacket', 'Apparel', 2700),
(20, 'LED Desk Lamp', 'Electronics', 1200),
(1, 'Wireless Mouse', 'Electronics', 750),
(2, 'Bluetooth Speaker', 'Electronics', 1800),
(3, 'Office Chair', 'Furniture', 4200),
(4, 'Standing Desk', 'Furniture', 8500),
(5, 'Ceramic Mug', 'Kitchenware', 250),
(6, 'Cookware Set', 'Kitchenware', 3200),
(7, 'Running Shoes', 'Apparel', 3100),
(8, 'Denim Jacket', 'Apparel', 2700),
(9, 'LED Desk Lamp', 'Electronics', 1200),
(10, 'Notebook Pack', 'Stationery', 400);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
