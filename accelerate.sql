-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2017 at 06:19 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accelerate`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` text NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` mediumtext NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 47329, 'Skillcrush RSS Feed', '', 'http://simplenewz.com/2014-10-07/Mainstream/feed/11202', '54.91.190.86', '2014-10-07 02:48:32', '2014-10-07 02:48:32', '[&#8230;] How Much Should You Charge for Freelance Web Design? [&#8230;]', 0, '0', '', 'pingback', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` longtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_actions`
--

DROP TABLE IF EXISTS `wp_nf3_actions`;
CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', '', 'save', 1, 1, '2016-08-24 20:39:20', NULL),
(2, '', '', 'email', 1, 1, '2016-08-24 20:39:20', NULL),
(3, '', '', 'email', 1, 1, '2016-08-24 20:47:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

DROP TABLE IF EXISTS `wp_nf3_action_meta`;
CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'label', 'Save to Database'),
(2, 1, 'objectType', 'Action'),
(3, 1, 'objectDomain', 'actions'),
(4, 1, 'editActive', ''),
(5, 1, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(6, 1, 'payment_gateways', ''),
(7, 1, 'payment_total', ''),
(8, 1, 'tag', ''),
(9, 1, 'to', ''),
(10, 1, 'email_subject', ''),
(11, 1, 'email_message', ''),
(12, 1, 'from_name', ''),
(13, 1, 'from_address', ''),
(14, 1, 'reply_to', ''),
(15, 1, 'email_format', 'html'),
(16, 1, 'cc', ''),
(17, 1, 'bcc', ''),
(18, 1, 'attach_csv', ''),
(19, 1, 'redirect_url', ''),
(20, 1, 'email_message_plain', ''),
(21, 2, 'label', 'Email Confirmation'),
(22, 2, 'to', '{field:email}'),
(23, 2, 'subject', 'This is an email action.'),
(24, 2, 'message', 'Hello, Ninja Forms!'),
(25, 2, 'objectType', 'Action'),
(26, 2, 'objectDomain', 'actions'),
(27, 2, 'editActive', ''),
(28, 2, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(29, 2, 'payment_gateways', ''),
(30, 2, 'payment_total', ''),
(31, 2, 'tag', ''),
(32, 2, 'email_subject', 'Submission Confirmation '),
(33, 2, 'email_message', '<p>{field:all_fields}<br></p>'),
(34, 2, 'from_name', ''),
(35, 2, 'from_address', ''),
(36, 2, 'reply_to', ''),
(37, 2, 'email_format', 'html'),
(38, 2, 'cc', ''),
(39, 2, 'bcc', ''),
(40, 2, 'attach_csv', ''),
(41, 2, 'email_message_plain', ''),
(42, 3, 'objectType', 'Action'),
(43, 3, 'objectDomain', 'actions'),
(44, 3, 'editActive', ''),
(45, 3, 'label', 'Email Notification'),
(46, 3, 'conditions', 'a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}'),
(47, 3, 'payment_gateways', ''),
(48, 3, 'payment_total', ''),
(49, 3, 'tag', ''),
(50, 3, 'to', '{system:admin_email}'),
(51, 3, 'email_subject', 'New message from {field:name}'),
(52, 3, 'email_message', '<p>{field:message}</p><p>- {field:name} ( {field:email} )</p>'),
(53, 3, 'reply_to', ''),
(54, 3, 'email_message_plain', ''),
(55, 3, 'from_name', ''),
(56, 3, 'from_address', ''),
(57, 3, 'email_format', 'html'),
(58, 3, 'cc', ''),
(59, 3, 'bcc', ''),
(60, 3, 'attach_csv', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

DROP TABLE IF EXISTS `wp_nf3_fields`;
CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(5, 'Email', 'email_1494769100366', 'email', 1, '2017-05-14 13:40:49', NULL),
(6, 'First Name', 'firstname_1494769113180', 'firstname', 1, '2017-05-14 13:40:49', NULL),
(7, 'Paragraph Text', 'textarea_1494769123355', 'textarea', 1, '2017-05-14 13:40:49', NULL),
(8, 'Submit', 'submit_1494769126036', 'submit', 1, '2017-05-14 13:40:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

DROP TABLE IF EXISTS `wp_nf3_field_meta`;
CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 5, 'objectType', 'Field'),
(2, 5, 'objectDomain', 'fields'),
(3, 5, 'editActive', ''),
(4, 5, 'order', '2'),
(5, 5, 'label', 'Email'),
(6, 5, 'type', 'email'),
(7, 5, 'key', 'email_1494769100366'),
(8, 5, 'label_pos', 'default'),
(9, 5, 'required', ''),
(10, 5, 'default', ''),
(11, 5, 'placeholder', ''),
(12, 5, 'container_class', ''),
(13, 5, 'element_class', ''),
(14, 5, 'admin_label', ''),
(15, 5, 'help_text', ''),
(16, 5, 'desc_text', ''),
(17, 6, 'objectType', 'Field'),
(18, 6, 'objectDomain', 'fields'),
(19, 6, 'editActive', ''),
(20, 6, 'order', '1'),
(21, 6, 'label', 'First Name'),
(22, 6, 'type', 'firstname'),
(23, 6, 'key', 'firstname_1494769113180'),
(24, 6, 'label_pos', 'default'),
(25, 6, 'required', ''),
(26, 6, 'default', ''),
(27, 6, 'placeholder', ''),
(28, 6, 'container_class', ''),
(29, 6, 'element_class', ''),
(30, 6, 'admin_label', ''),
(31, 6, 'help_text', ''),
(32, 6, 'desc_text', ''),
(33, 7, 'objectType', 'Field'),
(34, 7, 'objectDomain', 'fields'),
(35, 7, 'editActive', ''),
(36, 7, 'order', '3'),
(37, 7, 'type', 'textarea'),
(38, 7, 'label', 'Paragraph Text'),
(39, 7, 'key', 'textarea_1494769123355'),
(40, 7, 'label_pos', 'default'),
(41, 7, 'required', ''),
(42, 7, 'default', ''),
(43, 7, 'placeholder', ''),
(44, 7, 'container_class', ''),
(45, 7, 'element_class', ''),
(46, 7, 'input_limit', ''),
(47, 7, 'input_limit_type', 'characters'),
(48, 7, 'input_limit_msg', 'Character(s) left'),
(49, 7, 'manual_key', ''),
(50, 7, 'disable_input', ''),
(51, 7, 'admin_label', ''),
(52, 7, 'help_text', ''),
(53, 7, 'desc_text', ''),
(54, 7, 'disable_browser_autocomplete', ''),
(55, 7, 'textarea_rte', ''),
(56, 7, 'disable_rte_mobile', ''),
(57, 7, 'textarea_media', ''),
(58, 8, 'objectType', 'Field'),
(59, 8, 'objectDomain', 'fields'),
(60, 8, 'editActive', ''),
(61, 8, 'order', '4'),
(62, 8, 'type', 'submit'),
(63, 8, 'label', 'Submit'),
(64, 8, 'processing_label', 'Processing'),
(65, 8, 'container_class', ''),
(66, 8, 'element_class', ''),
(67, 8, 'key', 'submit_1494769126036'),
(68, 5, 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

DROP TABLE IF EXISTS `wp_nf3_forms`;
CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `key` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`) VALUES
(1, 'Contact Me', '', '2016-08-24 20:39:20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

DROP TABLE IF EXISTS `wp_nf3_form_meta`;
CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`) VALUES
(1, 1, 'default_label_pos', 'above'),
(2, 1, '_seq_num', '6'),
(3, 1, 'conditions', 'a:0:{}'),
(4, 1, 'objectType', 'Form Setting'),
(5, 1, 'editActive', ''),
(6, 1, 'show_title', '1'),
(7, 1, 'clear_complete', '1'),
(8, 1, 'hide_complete', '1'),
(9, 1, 'wrapper_class', ''),
(10, 1, 'element_class', ''),
(11, 1, 'add_submit', '1'),
(12, 1, 'logged_in', ''),
(13, 1, 'not_logged_in_msg', ''),
(14, 1, 'sub_limit_number', ''),
(15, 1, 'sub_limit_msg', ''),
(16, 1, 'calculations', 'a:0:{}'),
(17, 1, 'formContentData', 'a:4:{i:0;s:23:"firstname_1494769113180";i:1;s:19:"email_1494769100366";i:2;s:22:"textarea_1494769123355";i:3;s:20:"submit_1494769126036";}'),
(18, 1, 'container_styles_background-color', ''),
(19, 1, 'container_styles_border', ''),
(20, 1, 'container_styles_border-style', ''),
(21, 1, 'container_styles_border-color', ''),
(22, 1, 'container_styles_color', ''),
(23, 1, 'container_styles_height', ''),
(24, 1, 'container_styles_width', ''),
(25, 1, 'container_styles_font-size', ''),
(26, 1, 'container_styles_margin', ''),
(27, 1, 'container_styles_padding', ''),
(28, 1, 'container_styles_display', ''),
(29, 1, 'container_styles_float', ''),
(30, 1, 'container_styles_show_advanced_css', '0'),
(31, 1, 'container_styles_advanced', ''),
(32, 1, 'title_styles_background-color', ''),
(33, 1, 'title_styles_border', ''),
(34, 1, 'title_styles_border-style', ''),
(35, 1, 'title_styles_border-color', ''),
(36, 1, 'title_styles_color', ''),
(37, 1, 'title_styles_height', ''),
(38, 1, 'title_styles_width', ''),
(39, 1, 'title_styles_font-size', ''),
(40, 1, 'title_styles_margin', ''),
(41, 1, 'title_styles_padding', ''),
(42, 1, 'title_styles_display', ''),
(43, 1, 'title_styles_float', ''),
(44, 1, 'title_styles_show_advanced_css', '0'),
(45, 1, 'title_styles_advanced', ''),
(46, 1, 'row_styles_background-color', ''),
(47, 1, 'row_styles_border', ''),
(48, 1, 'row_styles_border-style', ''),
(49, 1, 'row_styles_border-color', ''),
(50, 1, 'row_styles_color', ''),
(51, 1, 'row_styles_height', ''),
(52, 1, 'row_styles_width', ''),
(53, 1, 'row_styles_font-size', ''),
(54, 1, 'row_styles_margin', ''),
(55, 1, 'row_styles_padding', ''),
(56, 1, 'row_styles_display', ''),
(57, 1, 'row_styles_show_advanced_css', '0'),
(58, 1, 'row_styles_advanced', ''),
(59, 1, 'row-odd_styles_background-color', ''),
(60, 1, 'row-odd_styles_border', ''),
(61, 1, 'row-odd_styles_border-style', ''),
(62, 1, 'row-odd_styles_border-color', ''),
(63, 1, 'row-odd_styles_color', ''),
(64, 1, 'row-odd_styles_height', ''),
(65, 1, 'row-odd_styles_width', ''),
(66, 1, 'row-odd_styles_font-size', ''),
(67, 1, 'row-odd_styles_margin', ''),
(68, 1, 'row-odd_styles_padding', ''),
(69, 1, 'row-odd_styles_display', ''),
(70, 1, 'row-odd_styles_show_advanced_css', '0'),
(71, 1, 'row-odd_styles_advanced', ''),
(72, 1, 'success-msg_styles_background-color', ''),
(73, 1, 'success-msg_styles_border', ''),
(74, 1, 'success-msg_styles_border-style', ''),
(75, 1, 'success-msg_styles_border-color', ''),
(76, 1, 'success-msg_styles_color', ''),
(77, 1, 'success-msg_styles_height', ''),
(78, 1, 'success-msg_styles_width', ''),
(79, 1, 'success-msg_styles_font-size', ''),
(80, 1, 'success-msg_styles_margin', ''),
(81, 1, 'success-msg_styles_padding', ''),
(82, 1, 'success-msg_styles_display', ''),
(83, 1, 'success-msg_styles_show_advanced_css', '0'),
(84, 1, 'success-msg_styles_advanced', ''),
(85, 1, 'error_msg_styles_background-color', ''),
(86, 1, 'error_msg_styles_border', ''),
(87, 1, 'error_msg_styles_border-style', ''),
(88, 1, 'error_msg_styles_border-color', ''),
(89, 1, 'error_msg_styles_color', ''),
(90, 1, 'error_msg_styles_height', ''),
(91, 1, 'error_msg_styles_width', ''),
(92, 1, 'error_msg_styles_font-size', ''),
(93, 1, 'error_msg_styles_margin', ''),
(94, 1, 'error_msg_styles_padding', ''),
(95, 1, 'error_msg_styles_display', ''),
(96, 1, 'error_msg_styles_show_advanced_css', '0'),
(97, 1, 'error_msg_styles_advanced', ''),
(98, 1, 'currency', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

DROP TABLE IF EXISTS `wp_nf3_objects`;
CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext COLLATE utf8mb4_unicode_ci,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

DROP TABLE IF EXISTS `wp_nf3_object_meta`;
CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

DROP TABLE IF EXISTS `wp_nf3_relationships`;
CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) DEFAULT NULL,
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/accelerate', 'yes'),
(2, 'home', 'http://localhost/accelerate', 'yes'),
(3, 'blogname', 'Accelerate', 'yes'),
(4, 'blogdescription', 'Accelerate is a strategy and maketing agency aimed at making our clients visible and building their businesses.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'adda@skillcrush.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:"addthis/addthis_social_widget.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:27:"ninja-forms/ninja-forms.php";i:3;s:47:"simple-twitter-tweets/simple-twitter-tweets.php";i:4;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'accelerate-theme', 'yes'),
(42, 'stylesheet', 'accelerate-theme-child', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '38590', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:27:"ninja-forms/ninja-forms.php";s:21:"ninja_forms_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '6', 'yes'),
(85, 'page_on_front', '5', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-2";a:1:{i:0;s:24:"pi_simpletwittertweets-2";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1512947573;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1512947584;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1512955828;a:1:{s:29:"wp_session_garbage_collection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1513517428;a:1:{s:13:"nf_optin_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"nf-monthly";s:4:"args";a:0:{}s:8:"interval";i:2678400;}}}s:7:"version";i:2;}', 'yes'),
(100, '_transient_random_seed', '08aec1e0cae22b19b4afef18ed1a2f40', 'yes'),
(131, 'theme_mods_twentyfourteen', 'a:2:{s:18:"nav_menu_locations";a:2:{s:7:"top-nav";i:2;s:12:"social-media";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1490222806;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(132, 'current_theme', 'Accelerate Theme Child', 'yes'),
(133, 'theme_mods_accelerate-theme', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"top-nav";i:2;s:12:"social-media";i:3;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1490140081;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(163, 'WPLANG', '', 'yes'),
(166, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(179, 'recently_activated', 'a:0:{}', 'yes'),
(191, 'category_children', 'a:0:{}', 'yes'),
(192, 'rewrite_rules', 'a:113:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:15:"case-studies/?$";s:32:"index.php?post_type=case_studies";s:45:"case-studies/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=case_studies&feed=$matches[1]";s:40:"case-studies/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=case_studies&feed=$matches[1]";s:32:"case-studies/page/([0-9]{1,})/?$";s:50:"index.php?post_type=case_studies&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"case-studies/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"case-studies/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"case-studies/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"case-studies/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"case-studies/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"case-studies/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"case-studies/([^/]+)/embed/?$";s:45:"index.php?case_studies=$matches[1]&embed=true";s:33:"case-studies/([^/]+)/trackback/?$";s:39:"index.php?case_studies=$matches[1]&tb=1";s:53:"case-studies/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?case_studies=$matches[1]&feed=$matches[2]";s:48:"case-studies/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?case_studies=$matches[1]&feed=$matches[2]";s:41:"case-studies/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?case_studies=$matches[1]&paged=$matches[2]";s:48:"case-studies/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?case_studies=$matches[1]&cpage=$matches[2]";s:37:"case-studies/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?case_studies=$matches[1]&page=$matches[2]";s:29:"case-studies/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"case-studies/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"case-studies/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"case-studies/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"case-studies/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"case-studies/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(193, 'limit_login_retries', 'a:1:{s:11:"108.73.3.12";i:1;}', 'no'),
(194, 'limit_login_retries_valid', 'a:1:{s:11:"108.73.3.12";i:1415679111;}', 'no'),
(198, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(199, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(200, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(201, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(207, 'finished_splitting_shared_terms', '1', 'yes'),
(208, 'site_icon', '0', 'yes'),
(209, 'medium_large_size_w', '768', 'yes'),
(210, 'medium_large_size_h', '0', 'yes'),
(211, 'db_upgraded', '', 'yes'),
(212, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.8.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.8.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.8.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.8.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.4";s:7:"version";s:5:"4.8.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.7.8-partial-0.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.8-rollback-0.zip";}s:7:"current";s:5:"4.7.8";s:7:"version";s:5:"4.7.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:3:"4.7";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1512920613;s:15:"version_checked";s:3:"4.7";s:12:"translations";a:0:{}}', 'no'),
(213, 'can_compress_scripts', '1', 'no'),
(216, '_site_transient_timeout_browser_ba7233c4bd21206e90f706898cb334e8', '1484245460', 'no'),
(217, '_site_transient_browser_ba7233c4bd21206e90f706898cb334e8', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.95";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(240, '_site_transient_timeout_browser_00cb6228a64f759a1bb585e143526e4f', '1484279180', 'no'),
(241, '_site_transient_browser_00cb6228a64f759a1bb585e143526e4f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"55.0.2883.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(246, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:19:"adda@skillcrush.com";s:7:"version";s:5:"4.7.1";s:9:"timestamp";i:1484937722;}', 'no'),
(252, '_site_transient_timeout_browser_754cdcc1e6416d7a56262cf3d275472d', '1490744361', 'no'),
(253, '_site_transient_browser_754cdcc1e6416d7a56262cf3d275472d', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(268, 'theme_mods_accelerate-theme-child', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"top-nav";i:2;s:12:"social-media";i:3;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(274, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(315, '_site_transient_timeout_available_translations', '1492046409', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(316, '_site_transient_available_translations', 'a:91:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-09 16:12:38";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 12:56:13";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 19:24:17";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:60:"https://downloads.wordpress.org/translation/core/4.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2016-09-29 08:38:56";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.4/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2017-03-23 04:38:14";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.4/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-07 08:41:41";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2016-10-20 16:53:20";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.4/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.4/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.7";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.7/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-05 11:04:39";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.7";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.7/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 11:08:55";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-10 23:30:09";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 15:44:48";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-21 21:24:48";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 15:48:14";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-21 21:25:23";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.7/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-11 12:43:28";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 00:34:14";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-03 23:03:48";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-11 18:03:11";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-15 04:56:31";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 08:11:17";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-04 17:16:39";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-03 12:46:56";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-24 20:30:13";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 22:19:40";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.4/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2016-08-17 22:11:44";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.4/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-07 12:13:31";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-25 22:19:36";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-04 18:02:43";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2017-01-29 17:21:14";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.4/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-07 18:34:12";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-06 14:20:49";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 18:04:09";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-09 16:11:01";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-09 16:14:48";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-10 17:48:28";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-04 01:43:25";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-10 10:03:48";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-08 02:27:42";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-17 12:35:49";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-25 23:06:52";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2017-01-30 13:25:31";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.4/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-09 08:11:02";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-31 11:00:19";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-05 15:13:56";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 13:03:24";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-03 10:10:56";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-11 11:21:27";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 12:39:15";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 06:17:03";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-23 09:02:10";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-11 08:51:51";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-09 14:23:37";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.16";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.16/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-20 09:00:07";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-08 18:37:21";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-10 10:11:22";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.6.4/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-21 12:56:58";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2016-09-23 13:45:11";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.4/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-06 20:27:29";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.16";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.16/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-26 14:54:05";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-10 08:18:30";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-04 12:04:46";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-04 13:58:23";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-09 11:05:20";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-05 08:28:07";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-03 20:47:33";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-04 20:17:20";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-03 07:14:30";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.4/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2016-10-12 07:04:13";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.4/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-19 17:56:07";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.6.4";s:7:"updated";s:19:"2017-02-10 18:03:30";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.4/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-04 23:10:17";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-09 10:42:49";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.7/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-07 17:58:49";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2016-12-08 04:30:37";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-07 10:19:30";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.7";s:7:"updated";s:19:"2017-01-10 02:29:10";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(368, 'acf_version', '4.4.11', 'yes'),
(432, '_site_transient_timeout_browser_4130101fe09bf8ad32e702450ff42e8e', '1494779486', 'no'),
(433, '_site_transient_browser_4130101fe09bf8ad32e702450ff42e8e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"57.0.2987.133";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(447, '_site_transient_timeout_popular_importers_0a1ebf537f500dadf2e44a5387f18a0e', '1494348062', 'no'),
(448, '_site_transient_popular_importers_0a1ebf537f500dadf2e44a5387f18a0e', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:54:"Import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:71:"Convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:10:"wp-cat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:46:"Import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:62:"Import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:28:"Import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:30:"Import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:53:"Import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:96:"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'no'),
(462, 'ninja_forms_version', '3.1.1', 'yes'),
(463, 'ninja_forms_settings', 'a:7:{s:11:"date_format";s:5:"m/d/Y";s:8:"currency";s:3:"USD";s:18:"recaptcha_site_key";s:0:"";s:20:"recaptcha_secret_key";s:0:"";s:14:"recaptcha_lang";s:0:"";s:19:"delete_on_uninstall";i:0;s:21:"disable_admin_notices";i:0;}', 'yes'),
(464, 'wp_nf_update_fields_batch_6a21dd338db8eeb0c2e5e8e5fed6be1f', 'a:4:{i:0;a:2:{s:2:"id";i:1;s:8:"settings";a:70:{s:5:"label";s:4:"Name";s:3:"key";s:4:"name";s:9:"parent_id";i:1;s:4:"type";s:7:"textbox";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"1";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:4:"mask";s:0:"";s:11:"custom_mask";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3277";}}i:1;a:2:{s:2:"id";i:2;s:8:"settings";a:62:{s:5:"label";s:5:"Email";s:3:"key";s:5:"email";s:9:"parent_id";i:1;s:4:"type";s:5:"email";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"2";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3281";}}i:2;a:2:{s:2:"id";i:3;s:8:"settings";a:71:{s:5:"label";s:7:"Message";s:3:"key";s:7:"message";s:9:"parent_id";i:1;s:4:"type";s:8:"textarea";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:9:"label_pos";s:5:"above";s:8:"required";s:1:"1";s:5:"order";s:1:"3";s:11:"placeholder";s:0:"";s:7:"default";s:0:"";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";s:0:"";s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:12:"textarea_rte";s:0:"";s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3284";}}i:3;a:2:{s:2:"id";i:4;s:8:"settings";a:69:{s:5:"label";s:6:"Submit";s:3:"key";s:6:"submit";s:9:"parent_id";i:1;s:4:"type";s:6:"submit";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:16:"processing_label";s:10:"Processing";s:5:"order";s:1:"5";s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:28:"wrap_styles_background-color";s:0:"";s:18:"wrap_styles_border";s:0:"";s:24:"wrap_styles_border-style";s:0:"";s:24:"wrap_styles_border-color";s:0:"";s:17:"wrap_styles_color";s:0:"";s:18:"wrap_styles_height";s:0:"";s:17:"wrap_styles_width";s:0:"";s:21:"wrap_styles_font-size";s:0:"";s:18:"wrap_styles_margin";s:0:"";s:19:"wrap_styles_padding";s:0:"";s:19:"wrap_styles_display";s:0:"";s:17:"wrap_styles_float";s:0:"";s:29:"wrap_styles_show_advanced_css";s:1:"0";s:20:"wrap_styles_advanced";s:0:"";s:29:"label_styles_background-color";s:0:"";s:19:"label_styles_border";s:0:"";s:25:"label_styles_border-style";s:0:"";s:25:"label_styles_border-color";s:0:"";s:18:"label_styles_color";s:0:"";s:19:"label_styles_height";s:0:"";s:18:"label_styles_width";s:0:"";s:22:"label_styles_font-size";s:0:"";s:19:"label_styles_margin";s:0:"";s:20:"label_styles_padding";s:0:"";s:20:"label_styles_display";s:0:"";s:18:"label_styles_float";s:0:"";s:30:"label_styles_show_advanced_css";s:1:"0";s:21:"label_styles_advanced";s:0:"";s:31:"element_styles_background-color";s:0:"";s:21:"element_styles_border";s:0:"";s:27:"element_styles_border-style";s:0:"";s:27:"element_styles_border-color";s:0:"";s:20:"element_styles_color";s:0:"";s:21:"element_styles_height";s:0:"";s:20:"element_styles_width";s:0:"";s:24:"element_styles_font-size";s:0:"";s:21:"element_styles_margin";s:0:"";s:22:"element_styles_padding";s:0:"";s:22:"element_styles_display";s:0:"";s:20:"element_styles_float";s:0:"";s:32:"element_styles_show_advanced_css";s:1:"0";s:23:"element_styles_advanced";s:0:"";s:44:"submit_element_hover_styles_background-color";s:0:"";s:34:"submit_element_hover_styles_border";s:0:"";s:40:"submit_element_hover_styles_border-style";s:0:"";s:40:"submit_element_hover_styles_border-color";s:0:"";s:33:"submit_element_hover_styles_color";s:0:"";s:34:"submit_element_hover_styles_height";s:0:"";s:33:"submit_element_hover_styles_width";s:0:"";s:37:"submit_element_hover_styles_font-size";s:0:"";s:34:"submit_element_hover_styles_margin";s:0:"";s:35:"submit_element_hover_styles_padding";s:0:"";s:35:"submit_element_hover_styles_display";s:0:"";s:33:"submit_element_hover_styles_float";s:0:"";s:45:"submit_element_hover_styles_show_advanced_css";s:1:"0";s:36:"submit_element_hover_styles_advanced";s:0:"";s:7:"cellcid";s:5:"c3287";}}}', 'no'),
(466, 'widget_ninja_forms_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(467, 'nf_admin_notice', 'a:2:{s:16:"one_week_support";a:2:{s:5:"start";s:9:"5/21/2017";s:3:"int";i:7;}s:14:"allow_tracking";a:2:{s:5:"start";s:9:"5/14/2017";s:3:"int";i:0;}}', 'yes'),
(468, 'fresh_site', '0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(470, 'nf_form_1', 'a:7:{s:2:"id";i:1;s:20:"show_publish_options";b:0;s:6:"fields";a:4:{i:0;a:2:{s:8:"settings";a:16:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:1;s:5:"label";s:5:"Email";s:4:"type";s:5:"email";s:3:"key";s:19:"email_1494769100366";s:9:"label_pos";s:7:"default";s:8:"required";b:0;s:7:"default";s:0:"";s:11:"placeholder";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";}s:2:"id";s:1:"5";}i:1;a:2:{s:8:"settings";a:16:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:2;s:5:"label";s:10:"First Name";s:4:"type";s:9:"firstname";s:3:"key";s:23:"firstname_1494769113180";s:9:"label_pos";s:7:"default";s:8:"required";b:0;s:7:"default";s:0:"";s:11:"placeholder";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";}s:2:"id";s:1:"6";}i:2;a:2:{s:8:"settings";a:25:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:3;s:4:"type";s:8:"textarea";s:5:"label";s:14:"Paragraph Text";s:3:"key";s:22:"textarea_1494769123355";s:9:"label_pos";s:7:"default";s:8:"required";b:0;s:7:"default";s:0:"";s:11:"placeholder";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";b:0;s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:12:"textarea_rte";s:0:"";s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";}s:2:"id";s:1:"7";}i:3;a:2:{s:8:"settings";a:10:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:4;s:4:"type";s:6:"submit";s:5:"label";s:6:"Submit";s:16:"processing_label";s:10:"Processing";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:3:"key";s:20:"submit_1494769126036";}s:2:"id";s:1:"8";}}s:7:"actions";a:3:{i:0;a:2:{s:8:"settings";a:25:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:4:"save";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:5:"label";s:16:"Save to Database";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:0:"";s:13:"email_subject";s:0:"";s:13:"email_message";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:12:"redirect_url";s:0:"";s:19:"email_message_plain";s:0:"";}s:2:"id";i:1;}i:1;a:2:{s:8:"settings";a:24:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2016-08-24 16:47:39";s:5:"label";s:18:"Email Notification";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:20:"{system:admin_email}";s:13:"email_subject";s:29:"New message from {field:name}";s:13:"email_message";s:63:"<p>{field:message}</p><p>- {field:name} ( {field:email} )</p>";s:8:"reply_to";s:0:"";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";}s:2:"id";i:3;}i:2;a:2:{s:8:"settings";a:26:{s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";s:0:"";s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:5:"label";s:18:"Email Confirmation";s:2:"to";s:13:"{field:email}";s:7:"subject";s:24:"This is an email action.";s:7:"message";s:19:"Hello, Ninja Forms!";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:13:"email_subject";s:24:"Submission Confirmation ";s:13:"email_message";s:29:"<p>{field:all_fields}<br></p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:19:"email_message_plain";s:0:"";}s:2:"id";i:2;}}s:8:"settings";a:100:{s:10:"objectType";s:12:"Form Setting";s:10:"editActive";s:0:"";s:5:"title";s:10:"Contact Me";s:3:"key";s:0:"";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:17:"default_label_pos";s:5:"above";s:10:"conditions";a:0:{}s:10:"show_title";s:1:"1";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"add_submit";s:1:"1";s:9:"logged_in";s:0:"";s:17:"not_logged_in_msg";s:0:"";s:16:"sub_limit_number";s:0:"";s:13:"sub_limit_msg";s:0:"";s:12:"calculations";a:0:{}s:15:"formContentData";a:4:{i:0;s:19:"email_1494769100366";i:1;s:23:"firstname_1494769113180";i:2;s:22:"textarea_1494769123355";i:3;s:20:"submit_1494769126036";}s:33:"container_styles_background-color";s:0:"";s:23:"container_styles_border";s:0:"";s:29:"container_styles_border-style";s:0:"";s:29:"container_styles_border-color";s:0:"";s:22:"container_styles_color";s:0:"";s:23:"container_styles_height";s:0:"";s:22:"container_styles_width";s:0:"";s:26:"container_styles_font-size";s:0:"";s:23:"container_styles_margin";s:0:"";s:24:"container_styles_padding";s:0:"";s:24:"container_styles_display";s:0:"";s:22:"container_styles_float";s:0:"";s:34:"container_styles_show_advanced_css";s:1:"0";s:25:"container_styles_advanced";s:0:"";s:29:"title_styles_background-color";s:0:"";s:19:"title_styles_border";s:0:"";s:25:"title_styles_border-style";s:0:"";s:25:"title_styles_border-color";s:0:"";s:18:"title_styles_color";s:0:"";s:19:"title_styles_height";s:0:"";s:18:"title_styles_width";s:0:"";s:22:"title_styles_font-size";s:0:"";s:19:"title_styles_margin";s:0:"";s:20:"title_styles_padding";s:0:"";s:20:"title_styles_display";s:0:"";s:18:"title_styles_float";s:0:"";s:30:"title_styles_show_advanced_css";s:1:"0";s:21:"title_styles_advanced";s:0:"";s:27:"row_styles_background-color";s:0:"";s:17:"row_styles_border";s:0:"";s:23:"row_styles_border-style";s:0:"";s:23:"row_styles_border-color";s:0:"";s:16:"row_styles_color";s:0:"";s:17:"row_styles_height";s:0:"";s:16:"row_styles_width";s:0:"";s:20:"row_styles_font-size";s:0:"";s:17:"row_styles_margin";s:0:"";s:18:"row_styles_padding";s:0:"";s:18:"row_styles_display";s:0:"";s:28:"row_styles_show_advanced_css";s:1:"0";s:19:"row_styles_advanced";s:0:"";s:31:"row-odd_styles_background-color";s:0:"";s:21:"row-odd_styles_border";s:0:"";s:27:"row-odd_styles_border-style";s:0:"";s:27:"row-odd_styles_border-color";s:0:"";s:20:"row-odd_styles_color";s:0:"";s:21:"row-odd_styles_height";s:0:"";s:20:"row-odd_styles_width";s:0:"";s:24:"row-odd_styles_font-size";s:0:"";s:21:"row-odd_styles_margin";s:0:"";s:22:"row-odd_styles_padding";s:0:"";s:22:"row-odd_styles_display";s:0:"";s:32:"row-odd_styles_show_advanced_css";s:1:"0";s:23:"row-odd_styles_advanced";s:0:"";s:35:"success-msg_styles_background-color";s:0:"";s:25:"success-msg_styles_border";s:0:"";s:31:"success-msg_styles_border-style";s:0:"";s:31:"success-msg_styles_border-color";s:0:"";s:24:"success-msg_styles_color";s:0:"";s:25:"success-msg_styles_height";s:0:"";s:24:"success-msg_styles_width";s:0:"";s:28:"success-msg_styles_font-size";s:0:"";s:25:"success-msg_styles_margin";s:0:"";s:26:"success-msg_styles_padding";s:0:"";s:26:"success-msg_styles_display";s:0:"";s:36:"success-msg_styles_show_advanced_css";s:1:"0";s:27:"success-msg_styles_advanced";s:0:"";s:33:"error_msg_styles_background-color";s:0:"";s:23:"error_msg_styles_border";s:0:"";s:29:"error_msg_styles_border-style";s:0:"";s:29:"error_msg_styles_border-color";s:0:"";s:22:"error_msg_styles_color";s:0:"";s:23:"error_msg_styles_height";s:0:"";s:22:"error_msg_styles_width";s:0:"";s:26:"error_msg_styles_font-size";s:0:"";s:23:"error_msg_styles_margin";s:0:"";s:24:"error_msg_styles_padding";s:0:"";s:24:"error_msg_styles_display";s:0:"";s:34:"error_msg_styles_show_advanced_css";s:1:"0";s:25:"error_msg_styles_advanced";s:0:"";s:8:"currency";s:0:"";}s:14:"deleted_fields";a:0:{}s:15:"deleted_actions";a:0:{}}', 'yes'),
(494, '_site_transient_timeout_browser_5d9a37c6a96acca914609d0251644dda', '1496793498', 'no'),
(495, '_site_transient_browser_5d9a37c6a96acca914609d0251644dda', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"58.0.3029.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(505, '_transient_timeout_plugin_slugs', '1496361300', 'no'),
(506, '_transient_plugin_slugs', 'a:8:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:37:"blogger-importer/blogger-importer.php";i:3;s:9:"hello.php";i:4;s:27:"ninja-forms/ninja-forms.php";i:5;s:33:"addthis/addthis_social_widget.php";i:6;s:47:"simple-twitter-tweets/simple-twitter-tweets.php";i:7;s:41:"wordpress-importer/wordpress-importer.php";}', 'no'),
(514, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1496284339', 'no'),
(515, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4340;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2480;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2353;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2097;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1821;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1579;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1557;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1430;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1335;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1322;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1316;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1267;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1263;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1104;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1043;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1038;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:983;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:926;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:812;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:790;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:785;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:762;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:760;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:665;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:655;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:652;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:645;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:642;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:634;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:622;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:600;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:590;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:589;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:575;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:573;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:572;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:566;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:554;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:551;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:538;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:530;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:523;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:518;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:503;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:497;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:489;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:488;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:476;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:464;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:463;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:462;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:459;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:440;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:434;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:433;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:431;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:427;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:419;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:412;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:409;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:401;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:396;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:395;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:394;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:376;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:375;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:365;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:363;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:350;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:332;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:332;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:331;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:329;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:322;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:321;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:319;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:317;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:317;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:314;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:313;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:296;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:294;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:293;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:292;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:286;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:285;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:285;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:280;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:279;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:277;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:274;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:272;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:267;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:267;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:263;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:262;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:262;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:260;}}', 'no'),
(518, 'widget_pi_simpletwittertweets', 'a:2:{i:2;a:22:{s:5:"title";s:13:"Recent Tweets";s:9:"titleLink";N;s:4:"name";s:10:"Accelerate";s:9:"numTweets";s:1:"1";s:9:"cacheTime";s:1:"5";s:11:"consumerKey";s:25:"by1QKV6Ocr7y8CEHLSqqQMF8N";s:14:"consumerSecret";s:50:"1nF7jicV3bPufADMZVSclO06eM8FaTdlI6bribZd26rmmxmCUY";s:11:"accessToken";s:50:"836899324646862849-H2TPAGJWnJUG6chRjMcZpUg63SXMXbx";s:17:"accessTokenSecret";s:45:"HHdsbIo30czm4KqUY3dmhrzi1KCcJ4gp6LyZ2II1rYfcH";s:15:"exclude_replies";s:2:"on";s:13:"twitterFollow";N;s:13:"dataShowCount";N;s:18:"dataShowScreenName";N;s:8:"dataLang";s:2:"en";s:7:"timeRef";N;s:7:"timeAgo";s:4:"true";s:14:"twitterIntents";N;s:18:"twitterIntentsText";N;s:11:"intentColor";s:7:"#999999";s:10:"showAvatar";N;s:12:"roundCorners";N;s:10:"avatarSize";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(519, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1496317416', 'no'),
(520, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1496317416', 'no'),
(521, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1496274216', 'no'),
(522, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1496317417', 'no'),
(523, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1496317417', 'no'),
(524, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1496274217', 'no'),
(525, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1496317420', 'no'),
(526, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1496317420', 'no'),
(527, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1496274220', 'no'),
(528, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1496317420', 'no'),
(529, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/05/wordpress-4-8-release-candidate/''>WordPress 4.8 Release Candidate</a> <span class="rss-date">May 25, 2017</span><div class="rssSummary">The release candidate for WordPress 4.8 is now available. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.8 on Thursday, June 8, but we need your help to get there. If you haven’t tested 4.8 yet, [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/pods-2-7-beta-introduces-flexible-relationships-rewrites-fields-in-javascript''>WPTavern: Pods 2.7 Beta Introduces Flexible Relationships, Rewrites Fields in JavaScript</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/github-introduces-temporary-interaction-limits-to-promote-healthier-discussions''>WPTavern: GitHub Introduces Temporary Interaction Limits to Promote Healthier Discussions</a></li><li><a class=''rsswidget'' href=''https://heropress.com/essays/building-wordpress-career-india/?utm_source=rss&#038;utm_medium=rss&#038;utm_campaign=building-wordpress-career-india''>HeroPress: Building A WordPress Career in India</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Popular Plugin:</span> Limit Login Attempts&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=limit-login-attempts&amp;_wpnonce=24ed9ba366&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Install Limit Login Attempts">(Install)</a></li></ul></div>', 'no'),
(532, 'list-tweets-Accelerate-backup', 'a:1:{i:0;a:6:{s:4:"text";s:207:"<a href="http://twitter.com/RoadBunner" target="_blank" rel="nofollow">@RoadBunner</a> I really don''t understand it. I started coughing up a lung at a stoplight and it went away once I started running again.";s:4:"name";s:7:"dennis!";s:9:"permalink";s:55:"http://twitter.com/accelerate/status/939756801918099456";s:5:"image";s:74:"http://pbs.twimg.com/profile_images/857019749263265793/w_xvOhIF_normal.jpg";s:4:"time";i:1512890456;s:8:"tweet_id";s:18:"939756801918099456";}}', 'yes'),
(535, 'addthis_shared_settings', 'a:21:{s:25:"addthis_anonymous_profile";s:35:"wp-416db145ccd5ff31cc1cf55509e14fc6";s:28:"addthis_asynchronous_loading";b:1;s:24:"addthis_per_post_enabled";b:1;s:15:"addthis_profile";s:0:"";s:15:"addthis_rate_us";s:0:"";s:28:"credential_validation_status";s:1:"0";s:8:"wpfooter";b:1;s:31:"sharing_buttons_feature_enabled";s:1:"1";s:23:"addthis_plugin_controls";s:9:"WordPress";s:19:"addthis_environment";s:0:"";s:24:"addthis_twitter_template";s:0:"";s:13:"addthis_bitly";b:0;s:18:"addthis_share_json";s:0:"";s:19:"addthis_layers_json";s:0:"";s:16:"data_ga_property";s:0:"";s:16:"addthis_language";s:0:"";s:9:"atversion";i:300;s:19:"addthis_append_data";b:1;s:18:"addthis_addressbar";b:0;s:11:"addthis_508";b:0;s:19:"addthis_config_json";s:0:"";}', 'yes'),
(536, 'addthis_sharing_buttons_settings', 'a:55:{s:5:"above";s:13:"large_toolbox";s:17:"above_chosen_list";s:0:"";s:19:"above_auto_services";b:1;s:17:"above_custom_more";s:0:"";s:22:"above_custom_preferred";s:0:"";s:21:"above_custom_services";s:0:"";s:17:"above_custom_size";s:0:"";s:19:"above_custom_string";s:0:"";s:21:"addthis_above_enabled";b:0;s:18:"addthis_aftertitle";b:0;s:22:"addthis_beforecomments";b:0;s:21:"addthis_below_enabled";b:0;s:21:"addthis_sidebar_count";s:1:"5";s:23:"addthis_sidebar_enabled";b:1;s:24:"addthis_sidebar_position";s:4:"left";s:30:"addthis_mobile_toolbar_enabled";b:0;s:43:"addthis_mobile_toolbar_numPreferredServices";s:1:"4";s:31:"addthis_mobile_toolbar_position";s:6:"bottom";s:29:"addthis_mobile_toolbar_counts";b:1;s:23:"atversion_update_status";s:1:"0";s:5:"below";s:13:"large_toolbox";s:17:"below_chosen_list";s:0:"";s:19:"below_auto_services";b:1;s:17:"below_custom_more";s:0:"";s:22:"below_custom_preferred";s:0:"";s:21:"below_custom_services";s:0:"";s:17:"below_custom_size";s:0:"";s:19:"below_custom_string";s:0:"";s:8:"location";s:5:"below";s:5:"style";s:11:"fb_tw_p1_sc";s:7:"toolbox";s:0:"";s:25:"addthis_above_showon_home";b:1;s:26:"addthis_above_showon_posts";b:1;s:26:"addthis_above_showon_pages";b:1;s:29:"addthis_above_showon_archives";b:1;s:31:"addthis_above_showon_categories";b:1;s:29:"addthis_above_showon_excerpts";b:1;s:25:"addthis_below_showon_home";b:1;s:26:"addthis_below_showon_posts";b:1;s:26:"addthis_below_showon_pages";b:1;s:29:"addthis_below_showon_archives";b:1;s:31:"addthis_below_showon_categories";b:1;s:29:"addthis_below_showon_excerpts";b:1;s:27:"addthis_sidebar_showon_home";b:1;s:28:"addthis_sidebar_showon_posts";b:1;s:28:"addthis_sidebar_showon_pages";b:1;s:31:"addthis_sidebar_showon_archives";b:1;s:33:"addthis_sidebar_showon_categories";b:1;s:34:"addthis_mobile_toolbar_showon_home";b:1;s:35:"addthis_mobile_toolbar_showon_posts";b:1;s:35:"addthis_mobile_toolbar_showon_pages";b:1;s:38:"addthis_mobile_toolbar_showon_archives";b:1;s:40:"addthis_mobile_toolbar_showon_categories";b:1;s:22:"addthis_plugin_version";s:5:"5.3.5";s:21:"addthis_sidebar_theme";s:11:"Transparent";}', 'yes'),
(537, 'widget_addthis-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(538, 'addthis_run_once', '1', 'yes'),
(539, 'addthis_settings', '', 'yes'),
(542, '_transient_timeout_addthis_shared_settings', '1496274947', 'no'),
(543, '_transient_addthis_shared_settings', 'a:20:{s:28:"addthis_asynchronous_loading";b:1;s:24:"addthis_per_post_enabled";b:1;s:15:"addthis_profile";s:0:"";s:15:"addthis_rate_us";s:0:"";s:28:"credential_validation_status";s:1:"0";s:8:"wpfooter";b:1;s:31:"sharing_buttons_feature_enabled";s:1:"1";s:23:"addthis_plugin_controls";s:9:"WordPress";s:19:"addthis_environment";s:0:"";s:24:"addthis_twitter_template";s:0:"";s:13:"addthis_bitly";b:0;s:18:"addthis_share_json";s:0:"";s:19:"addthis_layers_json";s:0:"";s:16:"data_ga_property";s:0:"";s:16:"addthis_language";s:0:"";s:9:"atversion";s:3:"300";s:19:"addthis_append_data";b:1;s:18:"addthis_addressbar";b:0;s:11:"addthis_508";b:0;s:19:"addthis_config_json";s:0:"";}', 'no'),
(544, '_transient_timeout_addthis_sharing_buttons_settings', '1496274947', 'no'),
(545, '_transient_addthis_sharing_buttons_settings', 'a:55:{s:5:"above";s:13:"large_toolbox";s:17:"above_chosen_list";s:0:"";s:19:"above_auto_services";b:1;s:17:"above_custom_more";s:0:"";s:22:"above_custom_preferred";s:0:"";s:21:"above_custom_services";s:0:"";s:17:"above_custom_size";s:0:"";s:19:"above_custom_string";s:0:"";s:21:"addthis_above_enabled";b:0;s:18:"addthis_aftertitle";b:0;s:22:"addthis_beforecomments";b:0;s:21:"addthis_below_enabled";b:0;s:21:"addthis_sidebar_count";s:1:"5";s:23:"addthis_sidebar_enabled";b:0;s:24:"addthis_sidebar_position";s:4:"left";s:30:"addthis_mobile_toolbar_enabled";b:0;s:43:"addthis_mobile_toolbar_numPreferredServices";s:1:"4";s:31:"addthis_mobile_toolbar_position";s:6:"bottom";s:29:"addthis_mobile_toolbar_counts";b:1;s:23:"atversion_update_status";s:1:"0";s:5:"below";s:13:"large_toolbox";s:17:"below_chosen_list";s:0:"";s:19:"below_auto_services";b:1;s:17:"below_custom_more";s:0:"";s:22:"below_custom_preferred";s:0:"";s:21:"below_custom_services";s:0:"";s:17:"below_custom_size";s:0:"";s:19:"below_custom_string";s:0:"";s:8:"location";s:5:"below";s:5:"style";s:11:"fb_tw_p1_sc";s:7:"toolbox";s:0:"";s:25:"addthis_above_showon_home";b:1;s:26:"addthis_above_showon_posts";b:1;s:26:"addthis_above_showon_pages";b:1;s:29:"addthis_above_showon_archives";b:1;s:31:"addthis_above_showon_categories";b:1;s:29:"addthis_above_showon_excerpts";b:1;s:25:"addthis_below_showon_home";b:1;s:26:"addthis_below_showon_posts";b:1;s:26:"addthis_below_showon_pages";b:1;s:29:"addthis_below_showon_archives";b:1;s:31:"addthis_below_showon_categories";b:1;s:29:"addthis_below_showon_excerpts";b:1;s:27:"addthis_sidebar_showon_home";b:1;s:28:"addthis_sidebar_showon_posts";b:1;s:28:"addthis_sidebar_showon_pages";b:1;s:31:"addthis_sidebar_showon_archives";b:1;s:33:"addthis_sidebar_showon_categories";b:1;s:34:"addthis_mobile_toolbar_showon_home";b:1;s:35:"addthis_mobile_toolbar_showon_posts";b:1;s:35:"addthis_mobile_toolbar_showon_pages";b:1;s:38:"addthis_mobile_toolbar_showon_archives";b:1;s:40:"addthis_mobile_toolbar_showon_categories";b:1;s:22:"addthis_plugin_version";s:5:"5.3.5";s:21:"addthis_sidebar_theme";s:11:"Transparent";}', 'no'),
(564, '_transient_timeout_list-tweets-Accelerate', '1512920914', 'no'),
(566, '_transient_list-tweets-Accelerate', 'a:1:{i:0;a:6:{s:4:"text";s:207:"<a href="http://twitter.com/RoadBunner" target="_blank" rel="nofollow">@RoadBunner</a> I really don''t understand it. I started coughing up a lung at a stoplight and it went away once I started running again.";s:4:"name";s:7:"dennis!";s:9:"permalink";s:55:"http://twitter.com/accelerate/status/939756801918099456";s:5:"image";s:74:"http://pbs.twimg.com/profile_images/857019749263265793/w_xvOhIF_normal.jpg";s:4:"time";i:1512890456;s:8:"tweet_id";s:18:"939756801918099456";}}', 'no'),
(567, '_site_transient_timeout_theme_roots', '1512922416', 'no'),
(568, '_site_transient_theme_roots', 'a:5:{s:22:"accelerate-theme-child";s:7:"/themes";s:16:"accelerate-theme";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'no'),
(569, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1512920623;s:7:"checked";a:5:{s:22:"accelerate-theme-child";s:5:"1.0.0";s:16:"accelerate-theme";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.9";s:14:"twentythirteen";s:3:"2.1";s:12:"twentytwelve";s:3:"2.2";}s:8:"response";a:3:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"2.1";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.2.1.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"2.3";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.2.3.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"2.4";s:3:"url";s:42:"https://wordpress.org/themes/twentytwelve/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwelve.2.4.zip";}}s:12:"translations";a:0:{}}', 'no'),
(570, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1512920620;s:8:"response";a:4:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":11:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.0";s:13:"compatibility";O:8:"stdClass":0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:27:"ninja-forms/ninja-forms.php";O:8:"stdClass":11:{s:2:"id";s:25:"w.org/plugins/ninja-forms";s:4:"slug";s:11:"ninja-forms";s:6:"plugin";s:27:"ninja-forms/ninja-forms.php";s:11:"new_version";s:5:"3.2.4";s:3:"url";s:42:"https://wordpress.org/plugins/ninja-forms/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/ninja-forms.3.2.4.zip";s:5:"icons";a:3:{s:2:"1x";s:64:"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747";s:2:"2x";s:64:"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747";s:7:"default";s:64:"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747";}s:7:"banners";a:3:{s:2:"2x";s:67:"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=1649747";s:2:"1x";s:66:"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=1649747";s:7:"default";s:67:"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=1649747";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.8.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:33:"addthis/addthis_social_widget.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/addthis";s:4:"slug";s:7:"addthis";s:6:"plugin";s:33:"addthis/addthis_social_widget.php";s:11:"new_version";s:5:"6.1.2";s:3:"url";s:38:"https://wordpress.org/plugins/addthis/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/addthis.6.1.2.zip";s:5:"icons";a:3:{s:2:"1x";s:60:"https://ps.w.org/addthis/assets/icon-128x128.png?rev=1223867";s:2:"2x";s:60:"https://ps.w.org/addthis/assets/icon-256x256.png?rev=1223867";s:7:"default";s:60:"https://ps.w.org/addthis/assets/icon-256x256.png?rev=1223867";}s:7:"banners";a:3:{s:2:"2x";s:63:"https://ps.w.org/addthis/assets/banner-1544x500.png?rev=1499004";s:2:"1x";s:62:"https://ps.w.org/addthis/assets/banner-772x250.png?rev=1499004";s:7:"default";s:63:"https://ps.w.org/addthis/assets/banner-1544x500.png?rev=1499004";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:68:"<p>Updated messaging and tested compatibility with Wordpress 4.9</p>";s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:37:"blogger-importer/blogger-importer.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/blogger-importer";s:4:"slug";s:16:"blogger-importer";s:6:"plugin";s:37:"blogger-importer/blogger-importer.php";s:11:"new_version";s:3:"0.9";s:3:"url";s:47:"https://wordpress.org/plugins/blogger-importer/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/blogger-importer.0.9.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:70:"https://ps.w.org/blogger-importer/assets/banner-772x250.png?rev=547650";s:7:"default";s:70:"https://ps.w.org/blogger-importer/assets/banner-772x250.png?rev=547650";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:47:"simple-twitter-tweets/simple-twitter-tweets.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/simple-twitter-tweets";s:4:"slug";s:21:"simple-twitter-tweets";s:6:"plugin";s:47:"simple-twitter-tweets/simple-twitter-tweets.php";s:11:"new_version";s:3:"4.4";s:3:"url";s:52:"https://wordpress.org/plugins/simple-twitter-tweets/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/simple-twitter-tweets.4.4.zip";s:5:"icons";a:3:{s:2:"1x";s:74:"https://ps.w.org/simple-twitter-tweets/assets/icon-128x128.png?rev=1236333";s:2:"2x";s:74:"https://ps.w.org/simple-twitter-tweets/assets/icon-256x256.png?rev=1236333";s:7:"default";s:74:"https://ps.w.org/simple-twitter-tweets/assets/icon-256x256.png?rev=1236333";}s:7:"banners";a:2:{s:2:"1x";s:75:"https://ps.w.org/simple-twitter-tweets/assets/banner-772x250.jpg?rev=730792";s:7:"default";s:75:"https://ps.w.org/simple-twitter-tweets/assets/banner-772x250.jpg?rev=730792";}s:11:"banners_rtl";a:0:{}}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/wordpress-importer";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.3";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.3.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:72:"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654";s:7:"default";s:72:"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 5, '_edit_last', '1'),
(3, 5, '_wp_page_template', 'default'),
(4, 5, '_edit_lock', '1493554220:1'),
(5, 6, '_edit_last', '1'),
(6, 6, '_wp_page_template', 'default'),
(7, 6, '_edit_lock', '1415229446:1'),
(8, 9, '_menu_item_type', 'post_type'),
(9, 9, '_menu_item_menu_item_parent', '0'),
(10, 9, '_menu_item_object_id', '5'),
(11, 9, '_menu_item_object', 'page'),
(12, 9, '_menu_item_target', ''),
(13, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(14, 9, '_menu_item_xfn', ''),
(15, 9, '_menu_item_url', ''),
(16, 9, '_menu_item_orphaned', '1415546843'),
(17, 10, '_menu_item_type', 'post_type'),
(18, 10, '_menu_item_menu_item_parent', '0'),
(19, 10, '_menu_item_object_id', '6'),
(20, 10, '_menu_item_object', 'page'),
(21, 10, '_menu_item_target', ''),
(22, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 10, '_menu_item_xfn', ''),
(24, 10, '_menu_item_url', ''),
(26, 11, '_menu_item_type', 'post_type'),
(27, 11, '_menu_item_menu_item_parent', '0'),
(28, 11, '_menu_item_object_id', '5'),
(29, 11, '_menu_item_object', 'page'),
(30, 11, '_menu_item_target', ''),
(31, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 11, '_menu_item_xfn', ''),
(33, 11, '_menu_item_url', ''),
(34, 11, '_menu_item_orphaned', '1415546843'),
(44, 13, '_menu_item_type', 'custom'),
(45, 13, '_menu_item_menu_item_parent', '0'),
(46, 13, '_menu_item_object_id', '13'),
(47, 13, '_menu_item_object', 'custom'),
(48, 13, '_menu_item_target', ''),
(49, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 13, '_menu_item_xfn', ''),
(51, 13, '_menu_item_url', 'http://twitter.com/skillcrush'),
(53, 14, '_menu_item_type', 'custom'),
(54, 14, '_menu_item_menu_item_parent', '0'),
(55, 14, '_menu_item_object_id', '14'),
(56, 14, '_menu_item_object', 'custom'),
(57, 14, '_menu_item_target', ''),
(58, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 14, '_menu_item_xfn', ''),
(60, 14, '_menu_item_url', 'http://facebook.com/skillcrush'),
(66, 19, '_edit_last', '1'),
(67, 26, '_edit_last', '1'),
(68, 28, '_edit_last', '1'),
(69, 31, '_edit_last', '1'),
(70, 33, '_edit_last', '1'),
(71, 35, '_edit_last', '1'),
(72, 36, '_edit_last', '1'),
(73, 37, '_edit_last', '1'),
(74, 39, '_edit_last', '1'),
(75, 47329, '_thumbnail_id', '47328'),
(76, 47329, 'thank_you_cta', ''),
(77, 47329, '_thank_you_cta', 'field_531f10983e6d6'),
(78, 47329, 'main-image', 'http://skillcrush.com/wp-content/uploads/2014/10/freelance-pricing-guide.jpg'),
(79, 47329, '_main-image', 'field_529a9c2bc03e6'),
(80, 47329, 'subtitle', ''),
(81, 47329, '_subtitle', 'field_529a9dc8eea2f'),
(82, 47329, 'tweet', 'How much do you charge for freelance work? The ULTIMATE guide to setting your prices. http://goo.gl/1DmW5y via @Skillcrush'),
(83, 47329, '_tweet', 'field_53a1a27fe6609'),
(84, 47329, 'tweet-link', 'http://ctt.ec/V4a7l'),
(85, 47329, '_tweet-link', 'field_53a1a291e660a'),
(86, 47329, 'cptr_related', 'a:0:{}'),
(87, 47329, '_mepr_unauthorized_message_type', 'default'),
(88, 47329, '_mepr_unauthorized_message', ''),
(89, 47329, '_mepr_unauth_login', 'default'),
(90, 47329, '_mepr_unauth_excerpt_type', 'default'),
(91, 47329, '_mepr_unauth_excerpt_size', '100'),
(92, 47329, '_rawhtml_settings', '0,0,0,0'),
(93, 47329, '_su_rich_snippet_type', 'none'),
(94, 47329, 'headlines_post_guid', '356b5323-08a9-45f7-a087-e2306d4148cb'),
(95, 47329, '_su_title', 'How much to charge for freelance web design'),
(96, 47329, '_su_description', 'So many factors go into deciding how much to charge for your work. This free PDF download will guide you through the process.'),
(97, 47329, 'dsq_thread_id', '3076334264'),
(98, 47330, '_edit_last', '1'),
(99, 47330, '_edit_lock', '1494174646:1'),
(100, 47331, '_wp_attached_file', '2017/04/mc-thumbnail-1.png'),
(101, 47331, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:608;s:6:"height";i:448;s:4:"file";s:26:"2017/04/mc-thumbnail-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"mc-thumbnail-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"mc-thumbnail-1-300x221.png";s:5:"width";i:300;s:6:"height";i:221;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(102, 47332, '_wp_attached_file', '2017/04/mc-thumbnail-2.png'),
(103, 47332, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:606;s:6:"height";i:817;s:4:"file";s:26:"2017/04/mc-thumbnail-2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"mc-thumbnail-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"mc-thumbnail-2-223x300.png";s:5:"width";i:223;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(104, 47333, '_wp_attached_file', '2017/04/mc-thumbnail-3.png'),
(105, 47333, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:606;s:6:"height";i:1211;s:4:"file";s:26:"2017/04/mc-thumbnail-3.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"mc-thumbnail-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"mc-thumbnail-3-150x300.png";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"mc-thumbnail-3-512x1024.png";s:5:"width";i:512;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(106, 47336, '_edit_last', '1'),
(108, 47336, 'position', 'normal'),
(109, 47336, 'layout', 'no_box'),
(110, 47336, 'hide_on_screen', ''),
(111, 47336, '_edit_lock', '1493551354:1'),
(112, 47336, 'field_58f54e88c1590', 'a:14:{s:3:"key";s:19:"field_58f54e88c1590";s:5:"label";s:8:"Services";s:4:"name";s:8:"services";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(113, 47336, 'field_58f54ed0c1591', 'a:14:{s:3:"key";s:19:"field_58f54ed0c1591";s:5:"label";s:6:"Client";s:4:"name";s:6:"client";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(114, 47336, 'field_58f5513fc1592', 'a:14:{s:3:"key";s:19:"field_58f5513fc1592";s:5:"label";s:9:"Site Link";s:4:"name";s:9:"site_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(115, 47336, 'field_58f55159c1593', 'a:11:{s:3:"key";s:19:"field_58f55159c1593";s:5:"label";s:7:"Image 1";s:4:"name";s:7:"image_1";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:2:"id";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(117, 47330, 'services', 'Content Strategy, Design &amp; Development'),
(118, 47330, '_services', 'field_58f54e88c1590'),
(119, 47330, 'client', 'Client: Mailchimp'),
(120, 47330, '_client', 'field_58f54ed0c1591'),
(121, 47330, 'site_link', 'Visit Live Site'),
(122, 47330, '_site_link', 'field_58f5513fc1592'),
(123, 47330, '_', 'field_58f55159c1593'),
(125, 47336, 'field_58f5588b87b07', 'a:11:{s:3:"key";s:19:"field_58f5588b87b07";s:5:"label";s:7:"Image 2";s:4:"name";s:7:"image_2";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:2:"id";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(128, 47336, 'field_58f558d3061db', 'a:11:{s:3:"key";s:19:"field_58f558d3061db";s:5:"label";s:7:"Image 3";s:4:"name";s:7:"image_3";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:2:"id";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(132, 47330, 'image_1', '47331'),
(133, 47330, '_image_1', 'field_58f55159c1593'),
(134, 47330, 'image_2', '47332'),
(135, 47330, '_image_2', 'field_58f5588b87b07'),
(136, 47330, 'image_3', '47333'),
(137, 47330, '_image_3', 'field_58f558d3061db'),
(140, 47336, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"case_studies";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(141, 39, '_edit_lock', '1493554384:1'),
(142, 47340, '_edit_last', '1'),
(143, 47340, '_edit_lock', '1496274081:1'),
(144, 47340, 'ninja_forms_form', '1'),
(145, 47342, '_field_5', ''),
(146, 47342, '_field_6', ''),
(147, 47342, '_field_7', ''),
(148, 47342, '_form_id', '1'),
(149, 47342, '_seq_num', '3'),
(150, 47343, '_field_5', ''),
(151, 47343, '_field_6', ''),
(152, 47343, '_field_7', ''),
(153, 47343, '_form_id', '1'),
(154, 47343, '_seq_num', '4'),
(155, 47344, '_field_5', ''),
(156, 47344, '_field_6', ''),
(157, 47344, '_field_7', ''),
(158, 47344, '_form_id', '1'),
(159, 47344, '_seq_num', '5'),
(160, 47348, '_edit_last', '1'),
(161, 47348, '_edit_lock', '1496189912:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` mediumtext NOT NULL,
  `post_excerpt` mediumtext NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` mediumtext NOT NULL,
  `pinged` mediumtext NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2014-11-05 23:13:15', '2014-11-05 23:13:15', '<h1>Accelerate Your Marketing.</h1>\r\n<h3>Save time. Increase sales. Make customers happier.</h3>\r\n', 'Homepage', '', 'publish', 'open', 'open', '', 'homepage', '', '', '2014-11-09 20:19:07', '2014-11-09 20:19:07', '', 0, 'http://localhost:8888/accelerate/?page_id=5', 0, 'page', '', 0),
(6, 1, '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 0, 'http://localhost:8888/accelerate/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-11-05 23:13:15', '2014-11-05 23:13:15', '', 'Homepage', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-11-05 23:13:15', '2014-11-05 23:13:15', '', 5, 'http://localhost:8888/accelerate/?p=7', 0, 'revision', '', 0),
(8, 1, '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 'Blog', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 6, 'http://localhost:8888/accelerate/?p=8', 0, 'revision', '', 0),
(9, 1, '2014-11-09 15:27:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-11-09 15:27:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/accelerate/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2014-11-09 15:27:41', '2014-11-09 15:27:41', ' ', '', '', 'publish', 'open', 'open', '', '10', '', '', '2014-11-09 15:27:44', '2014-11-09 15:27:44', '', 0, 'http://localhost:8888/accelerate/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2014-11-09 15:27:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-11-09 15:27:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/accelerate/?p=11', 1, 'nav_menu_item', '', 0),
(13, 1, '2014-11-09 19:26:01', '2014-11-09 19:26:01', '', 'Twitter', '', 'publish', 'open', 'open', '', 'twitter', '', '', '2014-11-09 19:26:01', '2014-11-09 19:26:01', '', 0, 'http://localhost:8888/accelerate/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2014-11-09 19:26:01', '2014-11-09 19:26:01', '', 'Facebook', '', 'publish', 'open', 'open', '', 'facebook', '', '', '2014-11-09 19:26:01', '2014-11-09 19:26:01', '', 0, 'http://localhost:8888/accelerate/?p=14', 2, 'nav_menu_item', '', 0),
(16, 1, '2014-11-09 20:19:07', '2014-11-09 20:19:07', '<h1>Accelerate Your Marketing.</h1>\r\n<h3>Save time. Increase sales. Make customers happier.</h3>\r\n', 'Homepage', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-11-09 20:19:07', '2014-11-09 20:19:07', '', 5, 'http://localhost:8888/accelerate/2014/11/09/5-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2014-10-12 17:45:15', '2014-10-12 17:45:15', '<ol>\n	<li><a href="http://skillcrush.com">Skillcrush</a> - just the best!</li>\n	<li><a href="http://tryruby.org">Try Ruby</a> - I love WHY!</li>\n	<li><a href="http://www.htmlandcssbook.com/">Jon Duckett</a> - Best books on programming. Period.</li>\n	<li><a href="http://railsgirls.com">Rails Girls</a> - Super cool, international code learning organization.</li>\n	<li><a href="http://girldevelopit.com">Girl Develop It </a>- Equally awesome in-person workshops all over the US.</li>\n	<li><a href="codeschool.com">Code School</a> - Great advanced tutorials and learning.</li>\n</ol>', 'My 5 Favorite Code Learning Resources', '', 'publish', 'open', 'open', '', 'my-5-favorite-code-learning-resources', '', '', '2014-10-12 17:45:15', '2014-10-12 17:45:15', '', 0, 'http://localhost:8888/starter/?p=19', 0, 'post', '', 0),
(26, 1, '2014-10-12 18:07:34', '2014-10-12 18:07:34', 'As you wait impatiently in line for your <a href="http://www.eonline.com/news/577755/this-is-why-starbucks-baristas-spell-your-name-wrong-on-coffee-cups" target="_blank">mislabeled</a> coffee cup (you’re already going to be 20 minutes late to the office), take a step back and think: THIS could be your office. You could skip the commute, bring your laptop and charger, and power through your to do list from anywhere, wherever you are.\n\nWorking remotely – whether from home, Starbucks, or another creative place – is booming. A Virgin Media Business <a href="http://thenextweb.com/uk/2012/02/22/home-sweet-home-60-of-uk-employees-could-be-working-remotely-within-a-decade/" target="_blank">survey</a> recently predicted that 60% of office-based employees will regularly work from home by 2022. And a separate survey featured in<a href="http://www.theguardian.com/money/work-blog/2014/apr/30/what-happened-to-remote-working">The Guardian</a> found that ⅓ of employees think commuting will be unheard of by 2036.\n\nBut, that’s the future and this is today, you say to yourself. You don’t have the skills or the resources to find a gig that would give you that kind of flexibility. That’s for 20-somethings working on a startup who code in hoodies, or stay-at-home moms who work as part-time assistants.\n\nWrong! In fact, completely wrong. The <a href="http://www.nytimes.com/2014/03/08/your-money/when-working-in-your-pajamas-is-more-productive.html?_r=0">typical remote employee</a> is a 40-something college graduate earning nearly $60,000 a year at a company with 100+ employees, according to the Census Bureau’s annual American Community Survey.\n\nIf working remotely tickles your fancy, check out this list of 25 great sites for finding remote work.\n<h1>Remote-Work Specific</h1>\n<h3>1. <a href="http://www.flexjobs.com/">FlexJobs</a></h3>\nFlexJobs has over 50 career categories, with jobs ranging from freelance to full-time, entry-level to executive. The best part? They screen the jobs before posting, so you don’t have to dig through shady opportunities. The site currently hosts more than 20K job listings including part-time and freelance opportunities!<strong><strong> </strong></strong>\n<h3>2. <a href="https://weworkremotely.com/">We Work Remotely</a></h3>\nSponsored by <a href="http://37signals.com/remote/">Remote</a>, the book by famed 37Signals founders, this job board is a catch-all of remote jobs from customer service to web design to programming. With the catchy subtag “Office not required,” and the cache of the 37Signals brand behind it, this site is sure to host remote opportunities at some of the hottest tech companies.\n<h3>3. <a href="http://workingnomads.co/">Working Nomads</a></h3>\nWorkingNomads (formerly goRemotely) delivers a curated list of remote jobs right to your inbox. Choose daily or weekly emails to make the remote job search come to you.\n<h3>4. <a href="https://www.staff.com/">Staff.com</a></h3>\nInstead of focusing on contract jobs, Staff.com features primarily long-term telecommuting jobs in a range of industries from persional assistants to programming. Choose to work either 80 hours a month (part-time) or 160 hours a month (full-time), and the site recruiters start matching you with employers!\n<h3>5. <a href="http://www.skipthedrive.com/">Skip The Drive</a></h3>\nWith a great name, a great resources tab (listing authors to follow and sites to check for help in the remote job world), and a decent listing of remote jobs, this site is true to its eponymous mission. Use what the site provides, you can completely skip that ugly morning commute.\n<h3>6. <a href="http://www.virtualvocations.com/">Virtual Vocations</a></h3>\nThis job board features only telecommuting jobs from technical writers to paralegals. Started by a stay-at-home mom frustrated with the job search for legitimate remote jobs, the company is still run by an entirely remote team. Plus, the blog has great tips, such as <a href="http://www.virtualvocations.com/blog/telecommuting-job-search-help/tips-taking-seasonal-telecommute-job/">a recent article</a> on how to take on a remote gig for the holiday season.\n\n&nbsp;\n<h1>Tech</h1>\n<h3>7. <a href="http://www.authenticjobs.com/">Authentic Jobs</a></h3>\nThe job board for web professionals. Just click the “wireless logo” (you’ll recognize it) and filter by remote jobs. Beautifully designed and easy to use, as you’d expect from a job board for creatives and developers!\n<h3>8. <a href="https://dribbble.com/jobs">Dribble</a></h3>\nDribble is a great site for designers to find their next gig. There’s a location tab right on top where you can click “remote / anywhere” and be off to the races finding your next work-from-home gig.\n<h3>9. <a href="https://angel.co/">AngelList</a></h3>\nAlways dreamed of working for a startup, but don’t live in a startup city hub? Head over to AngelList, a top site for startup jobs. When you search for a job on AngelList, click on “Job Type” and choose “Remote OK.”\n<h3>10. <a href="http://careers.stackoverflow.com/">Stack Overflow</a></h3>\nStack Overflow is a go-to jobs board for many top tech talent, especially web developers. Type in “remote” in the location field and you’ll bring up a list of more than 2,000 jobs that fit the bill.\n<h3>11. <a href="http://jobs.rubynow.com/">Ruby Now</a></h3>\nA job board entirely dedicated to Ruby developers. Once you graduate from the <a href="http://skillcrush.com/blueprint/web-developer/">Web Developer Blueprint</a>, and watch Adda’s video on <a href="https://www.youtube.com/watch?v=p5Lj3y3mOxw">how to get hired as a Ruby Developer</a>, head on over and get to work landing a remote gig here.\n\n&nbsp;\n<h1>Freelance and Contract</h1>\n<h3>12. <a href="http://www.skillbridge.co/">SkillBridge</a></h3>\nFocused on connecting top-tier former consultants with short-term engagements for high impact corporations, the SkillBridge model is taking the traditional consulting world by storm. As a consultant, you can focus on only remote work and only on projects (and with clients) you are passionate about. Whether you bring e-mail marketing expertise or are a whiz at building financial models, the SkillBridge site and model is a remote-worker-dream-come-true.\n<h3>13. <a href="https://www.fiverr.com/">Fiverr</a></h3>\nWith jobs starting at just $5 a pop, Fiverr is an amazing site to find your first gigs and build up a portfolio FAST. The site focuses on “gigs” or “micro-jobs,” such as editing an image in photoshop, designing a Facebook ad, or brainstorming SEO-rank-worthy article titles.\n<h3>14. <a href="https://www.odesk.com/">oDesk</a></h3>\noDesk features remote jobs in a suite of categories: from virtual assistants to mobile app developers. A little something extra to sweeten the deal: oDesk claims that more than 1 million companies, from Pinterest to OpenTable, use the site to hire remote freelancers.\n<h3>15. <a href="http://www.guru.com/">Guru</a></h3>\nWith the tagline “Work Your Way,” Guru allows freelancers to build profiles with portfolios of work. Employers find your profile, or search/apply for jobs. The homepage features a wide range of roles from WordPress Developers to  Logo Designers.\n<h3>16. <a href="https://www.elance.com/">Elance</a></h3>\nMore than 300K programmers and more than 200K designers use Elance to connect with remote job opportunities. Microsoft, Cisco, and Mozilla are just a few of the companies hiring contract workers on Elance.\n<h3>17. <a href="https://www.freelancer.com/">Freelancer.com</a></h3>\nClaiming to be “The World’s Largest Outsourcing Marketplace,” Freelancer.com is chock full of remote freelancing gigs. With over 13 million users, it features jobs for PHP developers, content writers, and web designers alike. Make a profile and start bidding on jobs!\n<h3>18. <a href="http://www.freelancermap.com/">Freelancer Map</a></h3>\nSearch thousands of IT projects that are remote, and almost always contract. This site has a global reach with projects at companies from Holland to Spain to Ohio!\n\n&nbsp;\n<h1>General</h1>\n<h3>19. <a href="https://www.themuse.com/jobs">The Muse</a></h3>\nWith a gorgeous user interface and fun-to-explore information about all the companies and jobs they feature, The Muse makes the job search easy. Search for the content features on the site that highlight remote opportunities, such as <a href="https://www.themuse.com/advice/7-companies-that-let-you-work-from-home">7 Companies That Let You Work From Home</a>.\n<h3>20. <a href="http://www.indeed.com/">Indeed</a></h3>\nOne of the most robust job boards you can find, Indeed pulls data from around the internet and around the world to bring together jobs. From Product Marketers to a “Technology Productivity Consultant,” Indeed’s 2K+ remote jobs run the gamut.\n<h3>21. <a href="http://www.idealist.org/">Idealist</a></h3>\nFor those who have always wanted to work on public health in Africa, or economic development in India, but weren’t willing to uproot from your friends, family, and country, Idealist.org has the opportunities for you.  You can filter all of your searches by selecting “remote” in the location category.\n<h3>22. <a href="http://www.careerbuilder.com/">Career Builder</a></h3>\nThe Career Builder jobs site is the largest online employment website in the United States! Type in “telecommute” or “remote” as a keyword and find more than 9K part-time, contract, and full-time jobs from brands like Forever 21 Inc, Xerox, and Univision.<strong><strong> </strong></strong>\n<h3>23. <a href="http://www.monster.com/">Monster</a></h3>\nThe first name you think of when you hear the words “job board,” Monster does indeed host a plethora of remote jobs. From remote customer service opportunities to remote user experience designers, there are plenty of options if you’re willing to sift.\n\n&nbsp;\n<h1>Direct Selling</h1>\n<em><strong>Note:</strong> I’d be remiss not to mention the amazing opportunities afforded by direct selling, also known as multi-level marketing. There is real opportunity with these types of jobs to work from home (or anywhere) and make an income. These companies often require upfront buy-in, so be sure to properly evaluate the opportunity before you jump in.</em>\n\n<em>A few of my favorites:</em>\n<h3>24. Beauty: <a href="https://www.avon.com/">Avon</a></h3>\nPerhaps the best-known and most-storied of the direct-selling opportunities, Avon has built an incredible business on the “Avon Lady Model.” Sell Avon beauty products, from lotion to lip gloss, to your friends and neighbors in exchange for the freedom of setting your own hours and working from home. <a href="http://www.marykay.com/">Mary Kay</a> is another skincare and makeup company that offers the opportunity to build your own business in this way.\n<h3>25. Jewelry: <a href="http://www.stelladot.com/">Stella &amp; Dot</a></h3>\nThis jewelry company has a “flexible entrepreneurship” model for stylists: host in-home or online trunk shows to display jewelry to friends. Flexibility and stye in one! If this doesn’t fit your style, there are several jewelry companies providing this type of remote job opportunity including <a href="https://www.chloeandisabel.com/">Chloe &amp; Isabel</a> and <a href="http://trend-tribe.com/">Trend Tribe</a>.', 'The Top 25 Sites For Finding Remote Jobs', '', 'publish', 'open', 'open', '', 'the-top-25-sites-for-finding-remote-jobs', '', '', '2014-10-12 18:07:34', '2014-10-12 18:07:34', '', 0, 'http://localhost:8888/starter/?p=26', 0, 'post', '', 0),
(28, 1, '2014-10-12 18:08:57', '2014-10-12 18:08:57', 'When starting a web site or a blog of any kind on WordPress there are certain plugins that can make your life 1000x easier. Not only will they save you time, but plugins can bring your site to the next level by making it more usable, searchable, and innovative.\n\nSo what is this magical “plugin” we speak of? A plugin is simply a program that you can install to add a <em>specific</em> feature to your website. For WordPress, these plugins are written in PHP and integrate seamlessly with your site.\n<h2>Installing A Plugin</h2>\nInstalling a plugin can be a little bit tricky if you haven’t done it before. First, log in to your WordPress admin page (https://[yourdomain.com]/wp-admin). From the admin dashboard, look to the left sidebar menu. There is an option on that menu to choose called “Plugins.” Click it! You’ll open the plugins settings tab. From here, there are two main ways to install:\n<h3>1.  Search for a plugin in the plugins library</h3>\nWhen you open the plugins setting tab, there is a search box on the main page. Type in the name of the specific plugin you are looking for, or a keyword (i.e. “SEO”) to find a list of options. You can also search by popular, new, favorites, or pre-determined keywords. Once you search, a list of matching results will appear. Research them by clicking “details” or install right away by clicking “install now.”\n\n<a href="http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.23-PM.png"><img class="alignnone size-large wp-image-21682 aligncenter" src="http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.23-PM-1024x375.png" alt="Search for Plugins" width="584" height="213" /></a>\n<h3>2. Upload your plugin</h3>\nYou can download a plugin as a .zip file to your computer, and then upload it to your site. Click the “upload” tab in the top navigation on the plugins settings tab, choose the file, and voila! Your plugin will upload and install for you. An important note is that you can only upload files in .zip format, so if you get an error message, check that!\n\n<a href="http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.46-PM.png"><img class="alignnone size-large wp-image-21683 aligncenter" src="http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.46-PM-1024x221.png" alt="Upload plugins" width="584" height="126" /></a>\n\nEvery plugin is slightly different with the setup required once it is installed – some require none at all, and others require a bit of work. Click into your plugin once you install it to make sure you follow the correct steps to get it up and running!\n<h2>Must Have Plugins</h2>\nAs you will see, there are thousands of plugins to choose from. What makes a plugin a must-have? Here’s the criteria we like to use at Skillcrush:\n<ul>\n	<li>Will the plugin make your site faster?</li>\n	<li>Will the plugin reduce spam?</li>\n	<li>Will the plugin help you better accomplish your site goals?</li>\n</ul>\nWe scoured to find you a few wonderfully helpful plugins that will accomplish just that! Try them out to make running your website much easier:\n<h3><a href="http://akismet.com/" target="_blank">Akismet</a></h3>\nThis is a great plugin for getting rid of annoying comment spam. If you are frequently disapproving or deleting spam comments, you need this. [<a href="http://akismet.com/">Download here</a>]\n<h3><a href="http://wordpress.org/plugins/google-sitemap-generator/" target="_blank">Google XML Sitemaps</a></h3>\nThis plugin makes it much easier for search engines to go through your content. And, when a search engine can better index your content, it is more likely to show up in searches! Plus, this plugin notifies search engines whenever you publish a new post. [<a href="http://wordpress.org/plugins/google-sitemap-generator/" target="_blank">Download here</a>]\n<h3><a href="http://wordpress.org/plugins/flaunt-your-clients-free/" target="_blank">Flaunt Your Clients</a></h3>\nThis is a fun plugin for web designers to use to make it easy for your clients to show how pleased they are with your work!  It creates a new custom post type specifically for client stories and testimonials. These “client pages” can be sorted by category, linked to blog posts, and more. [<a href="http://wordpress.org/plugins/flaunt-your-clients-free/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/wordpress-seo/" target="_blank">WordPress SEO by Yoast</a></h3>\nThis plugin is super useful for ANY blog: it is the ultimate optimization plugin. It enables you to determine how your post will look on Facebook and Google. It also allows you to optimize your page or post for Google search. There is a reason there have been over 7 million downloads to date! [<a href="https://wordpress.org/plugins/wordpress-seo/" target="_blank">Download here</a>]\n<h3><a href="http://wordpress.org/plugins/slick-social-share-buttons/" target="_blank">Slick Social Share</a></h3>\nThis plugin will get your stuff shared on social media seamlessly. Plus, it looks gorgeous on your site! [<a href="http://wordpress.org/plugins/slick-social-share-buttons/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/w3-total-cache/" target="_blank">W3 Total Cache</a></h3>\nThis plugin will help your site load faster (which, especially if you have a lot of high-resolution photos or images, is quite important). It has page cache, minification, database caching, CDN integration and browser caching to speed up loading times for site visitors. [<a href="https://wordpress.org/plugins/w3-total-cache/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/seo-automatic-links/" target="_blank">SEO Smart Links</a></h3>\nThis plugin fully automate the internal linking process of your WordPress blog. One of the best ways to keep people on your site and improve SEO is to link between your own site content and posts, and this makes it straightforward and no-brainer. It also can convert specific keywords into internal and affiliate links. [<a href="https://wordpress.org/plugins/seo-automatic-links/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/video-capture/" target="_blank">Video Capture</a></h3>\nThis plugin integrates video into your site in a big way. You simply put a shortcode into any page or post, and users will be able to record short videos, up to three minutes in length. It’s a fun feature to add, if you have a creative way to use it! [<a href="https://wordpress.org/plugins/video-capture/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/meet-my-team/" target="_blank">Meet My Team</a></h3>\nThis is great for showing off who is on your team. This plugin will provide you with a custom post type designed for displaying team members and their info. A shortcode displays the team members in a responsive grid on any page or post you like. Until you take a Skillcrush JavaScript <a href="http://skillcrush.com/skillcrush-blueprints/">class or blueprint</a>, it’s a great shortcut to make your site responsive! [<a href="https://wordpress.org/plugins/meet-my-team/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/contact-form-7/" target="_blank">Contact Form 7</a></h3>\nIf you ever filled out a contact form on a blog, it very well may be through Contact Form. This plugin provides easy contact forms for blogs (i.e. contact us for help / advertising, etc.). It also works in conjunction with Askimet (above!) so there won’t be any spam abuse with these forms. [<a href="https://wordpress.org/plugins/contact-form-7/" target="_blank">Download here</a>]\n\nDo you have any particularly helpful WordPress plugins? We’re always on the lookout for new favorites! Let us know.', '10 WordPress Plugins You Can’t Live Without', '', 'publish', 'open', 'open', '', '10-wordpress-plugins-you-cant-live-without', '', '', '2014-10-12 18:08:57', '2014-10-12 18:08:57', '', 0, 'http://localhost:8888/starter/?p=28', 0, 'post', '', 0),
(31, 1, '2014-10-12 18:10:49', '2014-10-12 18:10:49', 'A great morning routine can really make or break your day. In her book <em><a href="http://www.amazon.com/Successful-People-Breakfast-Mornings-ebook/dp/B007K3E2YK/?_encoding=UTF8&amp;camp=1789&amp;creative=9325&amp;linkCode=ur2&amp;tag=marandang-20" target="_blank">What the Most Successful People Do Before Breakfast</a></em>, Laura Vanderkam writes, “Seizing your mornings is the equivalent of that sound financial advice to pay yourself first.  If you wait until the end of the month to save what you have left, there will be nothing left over.  Likewise, if you wait until the end of the day to do meaningful but not urgent things like exercise, pray, read, ponder how to advance your career or grow your organization, or truly give your family your best, it probably won’t happen.”\n\nEven if you have never considered yourself a morning person, you are going to have to figure out how to work around that as some of the most successful people in the world attribute a lot of their productivity to a stellar morning routine. Check out these kings and queens of technology and their amazing morning routines.\n<h3>Padmasree Warrior,  Cisco Chief Technical and Strategy Officer</h3>\nCan you say early riser? Warrior <a href="http://www.lifehack.org/articles/lifestyle/the-daily-routine-of-17-ceos.html">wakes up at 4:30 a.m</a>., reads email for an hour, checks out the news, exercises, and gets her son ready for school. She is in the office by 8:30 at the latest and starts her workday.\n<h3>David Karp, Founder of Tumblr</h3>\nThe 28 year old founder and CEO of Tumblr, puts off checking his email until he gets to the office around 9:30 am, unlike many of his CEO colleagues. I guess he is of the philosophy that you should not start your day by checking email. As <a class="opennew" href="http://www.inc.com/magazine/201106/the-way-i-work-david-karp-of-tumblr.html" target="_blank">quoted in <em>Inc. Magazine</em></a>, “Reading e-mails at home never feels good or <em>productive</em> . If something urgently needs my attention, someone will call or text me.”\n<h3>Steve Jobs, late Apple CEO</h3>\nJobs spent his mornings re-evaluating his work and his goals in life. <a class="opennew" href="http://www.ted.com/talks/steve_jobs_how_to_live_before_you_die.html" target="_blank">In his speech to a graduating class at Stanford</a>, Jobs said:\n<blockquote>“For the past 33 years I have looked in the mirror every morning and asked myself: ‘If today were the last day of my life, would I want to do what I am about to do today?’ And whenever the answer has been ‘No’ for too many days in a row, I know I need to change something.”</blockquote>\n<h3>Marissa Mayer, CEO of Yahoo</h3>\nMayer is another early riser. We aren’t sure of the time but she has admitted she really doesn’t need much sleep to thrive (between <a href="http://www.businessinsider.com/successful-people-who-barely-sleep-2012-9?op=1">four and six hours of sleep on any given night</a>). Of course, this is also the woman who said <strong>t</strong><strong>here are 130 hours of potential work time in a week if you shower strategically.</strong>\n<h3>Jason Goldberg, CEO of Fab</h3>\nGoldberg is definitely of the school of thought that working out first thing in the morning makes you productive for the rest of the day. According to research, <a href="http://www.dailymail.co.uk/news/article-1095783/People-exercise-work-days-happier-suffer-stress-productive.html">published in the <em>International Journal of Workplace Health Management</em></a>, on exercise days, people’s mood significantly improved after exercising. Goldberg told Inc., “I start my day at 6 every morning, and the first thing I do is check overnight emails. Our technology team is based in India, so they’re ahead of us. After I respond to any urgent emails, I do my morning run on the treadmill at a full steep incline for 30 minutes. I try not to think about work. Instead, I watch TV shows on my iPad. Currently, I’m watching “Curb Your Enthusiasm”–I’m up to Season Six. My other favorite shows are “Top Chef”, “Dexter”, and “Mad Men”.”\n<h3>Alexa Von Tobel, CEO and Founder of LearnVest</h3>\nVon Tobel is also in support of a morning workout followed by a plan to the minute day. She told <a href="http://observer.com/2014/04/learnvest-founder-alexa-von-tobel-q-and-a/#ixzz33mpMd9Om" target="_blank">The Observer</a>:\n<blockquote>“I start with an early morning workout (whether a power walk with friends, barre class or spin class), which is critical to feeling energized for the whole day. My calendar is often scheduled down to 15-minute intervals, so I can (attempt to!) make time for everything — internal and external meetings, speaking events, interviews, etc. I try to put as much as possible on auto-pilot (ex: using shortcuts like eating basically the same thing for breakfast and lunch). Also, I like to tackle the hardest things first, so I think through my priorities the night before and make sure I have time for my most strategic work. "</blockquote>', 'The Morning Habits of 6 Successful People in Technology', '', 'publish', 'open', 'open', '', 'the-morning-habits-of-6-successful-people-in-technology', '', '', '2014-10-12 18:10:49', '2014-10-12 18:10:49', '', 0, 'http://localhost:8888/starter/?p=31', 0, 'post', '', 0),
(33, 1, '2014-10-12 18:12:09', '2014-10-12 18:12:09', 'It’s back to school season parents! Are you excited? Frantic? Both? You have a lot on your plate – starting hectic morning routines anew, helping with homework, packing healthy lunches, managing after school activities, WHEW.  And of-course during all this you’re probably wondering if your kids are learning the right things at school and how you can supplement their education at home.\n\nYou’ve no doubt heard about the importance of computer literacy and getting your kids into programming and coding. But with the abundance of apps, toys, and books available, it’s hard to know where to start. Here are my top 4 choices for parents looking to get their young ones into tech:\n<h3>1. <a href="http://www.gethopscotch.com/" target="_blank">Hopscotch</a></h3>\nThis iPad app lets kids drag and drop functioning blocks of code to build their own programs. The app teaches kids programming fundamentals as well as critical thinking and problem solving skills in a creative environment. The app fosters a “learn by experimenting” attitude and encourages kids to play and try things and see what works. Hopscotch was actually inspired by Scratch, # 3 on this list. Hopscotch cofounders Jocelyn Leavitt and Samantha John hope to get girls into programming earlier and help fill the void of women in tech.\n<h3>2. <a href="http://www.helloruby.com/" target="_blank">Hello Ruby</a></h3>\nWe love everything about Linda Liukas and her upcoming children’s book Hello Ruby. The book raised $100k in 24 hours on Kickstarter and more than exceeded its initial goal of $10k by raising just over $380k at the end of its campaign. The book aims to teach 4-7 year olds about programming and open source culture through a smart, mischievous female protagonist and her whimsical adventures. Parents get a workbook so they can learn and help their kids solve problems in the accompanying activity book. We interviewed Liukas at the completion of her Kickstarter project – <a href="http://skillcrush.com/2014/02/21/skillcrush-linda-liukas-rails-girls/" target="_blank">you can read that interview here.</a>\n<h3>3. <a href="http://scratch.mit.edu/" target="_blank">Scratch</a></h3>\nScratch is a brainchild of the Lifelong Kindergarten Group at MIT’s Media Lab. It’s a programming language and comes with an extensive online community of it’s own. It’s designed for kids aged 8-16 and is totally free to use. Scratch allows students to create their own animations, interactive stories and much more. It uses drag and drop blocks of code similar to Hopscotch.\n<h3>4. <a href="http://www.tynker.com/" target="_blank">Tynker</a></h3>\nI learned about Tynker from my old boss, who’s wife Tanya homeschools their 3 kids. Tynker provides self-paced courses with tutoring baked right in. Their tutorials are interactive and fun for kids, allowing them to unlock achievements and badges, create customized projects and characters and build video games while they learn programming concepts. Sharing projects on the web with others is a big focus of Tynker’s and they hold summer camps to foster collaboration and knowledge-sharing. They occasionally run <a href="http://www.tynker.com/blog/articles/tynker/a-room-full-of-girls-coding/" target="_blank">workshops exclusively for girls</a> as well.\n\nAre you an old hat at getting kids into tech? Know all the cool, fun, hip new programming and tech apps, toys and tools out there? Share your top picks in the comments below!', '4 Games You Will Want Your Kids to Play', '', 'publish', 'open', 'open', '', '4-games-you-will-want-your-kids-to-play', '', '', '2014-10-12 18:12:09', '2014-10-12 18:12:09', '', 0, 'http://localhost:8888/starter/?p=33', 0, 'post', '', 0),
(35, 1, '2014-10-12 18:13:16', '2014-10-12 18:13:16', 'When you ask a web server for a page, it’s PHP’s job to create it. When you browse a WordPress blog or make a post on Facebook, PHP is putting it all together.\n\nIf you wanted a very simple PHP page to greet you every time you looked at it, it might look something like this:\n\n<code>&lt;?php echo “Hi there stranger!”; ?&gt;</code>\n\nThat would make a web page that looked like this:\n<p class="code">Hi there stranger!</p>\nOne of the reasons many people learn PHP instead of Ruby or Python is that it comes installed on pretty much every web server out there. If you happen to have a bit of web space to your name, chances are you’re able to run PHP.\n\nA pretty typical way you’ll see people working with PHP is along with Linux (an operating system), <a title="Web Server" href="http://skillcrush.com/2012/07/03/web-server-2/">Apache</a> (a web server), <a title="MySQL" href="http://skillcrush.com/2012/12/04/mysql-2/">MySQL</a> (a database), and PHP. This kind of setup is called LAMP.\n<h5 class="cocktail-party-header">Cocktail Party Fact</h5>\nPHP supposedly stands for “PHP: Hypertext Preprocessor.” If you said “Hey, but that doesn’t say what PHP means!” then you get the point ;).', 'Tech Term: PHP', '', 'publish', 'open', 'open', '', 'tech-term-php', '', '', '2014-10-12 18:13:16', '2014-10-12 18:13:16', '', 0, 'http://localhost:8888/starter/?p=35', 0, 'post', '', 0),
(36, 1, '2014-10-12 18:14:06', '2014-10-12 18:14:06', 'Looking for a new job where you can put your tech know-how to work? Having digital skills opens up a world of career choices for you. Take a look at some of the latest and greatest jobs we’ve found that’ll let you flex your digital muscles.\n\nToday, we’re featuring jobs that require WordPress skills – and learn more by signing up to watch our webinar on Friday, August 1st: <a href="http://skillcrush.com/webinar-august-1st-signup">3 Ways to Make WordPress Bullet-Proof!</a>\n\n<strong>Position: <a href="https://bu.silkroad.com/epostings/index.cfm?fuseaction=app.dspjob&amp;jobid=296409&amp;company_id=15509&amp;version=1&amp;jobBoardId=1112">Designer, Marketing &amp; Communications, Interactive Design</a>\nCompany: <a href="https://bu.silkroad.com/epostings/index.cfm?fuseaction=app.dspjob&amp;jobid=296409&amp;company_id=15509&amp;version=1&amp;jobBoardId=1112">Boston University</a></strong>\n<strong>Location: Boston, MA\n</strong>Start as a member of BU’s integrated design team. Take the lead on creating and improving websites through outstanding design. Manage, build, and grow Boston University’s nationally recognized and award-winning online magazine, Bostonia. Coordinate successful issue launches, liase between the magazine editor and the design team, and play a key role in enhancing the content management system (a customized installation of WordPress). Plus, participate in the design and front-end development of other WordPress-powered websites and editorial channels across the university.\n\n<strong>Position: <a href="http://www.idealist.org/view/job/W9C6NkTNN5sP/">Graphic Designer / Project Manager</a>\nCompany: <a href="http://www.idealist.org/view/org/72tfp76Bn3H4/">Community Blueprint</a></strong>\n<strong>Location: Minneapolis, MN</strong>\nCreate campaigns for governmental and nonprofit organizations focus on public health behavior change in this multi-faceted opportunity. A little experience with print and web design, project management skills, and an understanding of WordPress sets you up for success in this role. Your time will be split managing multiple projects and doing design for some or them.\n\n<strong>Position: <a href="http://www.idealist.org/view/job/4zdMTJ4HJFCp/">Web Designer</a>\nCompany: <a href="http://www.idealist.org/view/org/32gckNTTp6hmD/">Global Bioethics Initiative</a>\nLocation: New York, NY</strong>\nJump right in to help create and launch a new website for the Global Bioethics Initiative, focused on serving as an educational resource and a database for breaking news and research in the fields of organ trafficking and organ transplantation. The site will be made – ideally – using WordPress. Take your Skillcrush skills and create a beautiful, user-friendly, and content-centered site to cover organs, tissues, cells donation, and biotechnology policy trafficking stories.\n\n<strong>Position: <a href="http://infoscout.theresumator.com/apply/job_20140721170815_LB4IKVVYRHLJ8RFP/Content-Marketing-Manager.html?source=INDE">Content Marketing Manager</a>\nCompany: <a href="http://infoscout.theresumator.com/apply/job_20140721170815_LB4IKVVYRHLJ8RFP/Content-Marketing-Manager.html?source=INDE">InfoScout</a>\nLocation: San Francisco, CA</strong>\nPut your marketing chops to work at this content marketing company, InfoScout. The current blog, InfoScout.co, is only scratching the surface of what can be done with the company’s data – so you will report directly to the CEO in this amazing opportunity to take the content to the next level. Bring your go-getter attitude to optimizing content, managing the WordPress blog, and growing the InfoScout newsletter base!', 'Classifieds: WordPress Edition', '', 'publish', 'open', 'open', '', 'classifieds-wordpress-edition', '', '', '2014-10-12 18:14:06', '2014-10-12 18:14:06', '', 0, 'http://localhost:8888/starter/?p=36', 0, 'post', '', 0),
(37, 1, '2014-10-12 18:15:01', '2014-10-12 18:15:01', 'When I launched <a href="http://skillcrush.com/2014/06/05/wordpress-com-vs-wordpress-org/www.crandlecakes.com">my blog</a> in 2012, I went about it like this: I Googled “WordPress blog,” clicked <a href="http://zh.wordpress.com/">a button</a> that said, “get a free blog,” and I started rolling.\n\nA year later, I realized I should have done more research. I wanted to change my site layout and add functions (like a hovering Pinterest button), and I realized (oh nooos!) I needed a “WordPress.org blog” for that.\n\nGetting a “WordPress.org blog,” it turns out, really means downloading the free, open-source <a href="http://wordpress.org/">WordPress web software</a> and using a third-party hosting service (like GoDaddy or Bluehost) to get your site online.\n\n<a href="https://wordpress.com/">WordPress.com</a>, on the other hand, takes care of all that legwork for you. You don’t worry about hosting or serving up files, and your blog comes with a free domain that looks something like this: <a href="http://www.myblog.wordpress.com/">www.mynewblog.wordpress.com</a>.\n\nBut when you hand over responsibility, you also lose control: your WordPress.com site will show ads unless you pay a yearly fee, and many upgrades, like hosting videos or buying a custom domain name for example, can get costly.\n\nTo add to the new-blogger confusion, when you’re working on your blog, the Dashboard (the place where you edit your blog from the back end) looks almost exactly the same no matter which avenue you take. Because WordPress.com runs on the same WordPress software as a self-hosted site, the user experience after setting up your blog isn’t that different.\n\nDeciding between starting a free WordPress.com blog and self-hosted WordPress site is as simple as deciding how much freedom you want over your site’s look and feel, how much behind-the-scenes work you’re willing to do, and whether you want to monetize your blog.\n\n<a href="http://howtomakemyblog.com/wordpress-com-org/"><img title="WordPress.com Vs WordPress.org Comparison" src="http://makemyblog1.how2make.netdna-cdn.com/wp-content/uploads/wordpress.com-vs-org.jpg" alt="WordPress.com Vs WordPress.org Comparison" width="800" height="1723" /></a>\n\n&nbsp;\n<h2>1. How much control do you want over your site’s look and feel?</h2>\nIf you’re okay with an “out of the box” theme [http://theme.wordpress.com/], WordPress.com might work for you. For an extra charge, you can customize some features, like fonts and background colors. Overall, though, you are limited when it comes to changing the design of your site.\n\nIf you’re looking at those themes and thinking, “but I want my Instagram feed up higher and I’d like social media buttons above the top navigation,” you’ll want to go with a self-hosted WordPress blog so you can access your site’s layout and HTML.\n<h2>2. What extra functionality do you want on your site?</h2>\nRemember that anecdote about the Pinterest hover button I wanted? WordPress.com is always updating and adding new features, but you will have more control on a self-hosted site. Through WordPress.org, you’ll have access to libraries of plugins [https://wordpress.org/plugins/] that can add features like interactive calendars, social media sharing options, and RSS feeds–not to mention, Google Analytics–to your site. And by accessing your site’s code, your opportunities to add to and embellish features are unlimited.\n<h2>3. Do you want to monetize your site?</h2>\n“Oh wow, I have so many pageviews! Maybe I can make a little cash with ads!” Nope. Not if you’re on a WordPress.com site. They’re giving you a lot for free; it’s no surprise that you can only sell ads in WordPress-approved ways. On a self-hosted site, however, the world is your oyster…or, you know, your sales floor.\n\nIn addition, while, WordPress.com recently introduced new ways to sell on your site, eCommerce is more established and flexible with a self-hosted site.\n<h2>4. How much can you spend?</h2>\nSelf-hosting is an upfront cost that ranges from a few dollars a month to closer to hundreds per year. But using a free WordPress.com blog and adding a lot of additional features can get pricey. Infographic cost comparison:<a href="http://howtomakemyblog.com/wordpress-com-org/">http://howtomakemyblog.com/wordpress-com-org/</a>\n\nWhen it comes down to it, WordPress.com is a valuable tool for users looking for a free option, who don’t need to customize or make money off of their site. But getting a self-hosted site through WordPress.org provides the most flexibility, freedom, and opportunity for growth. And let’s face it, you’re going to want to use this site to become a moneybags, and WordPress.org allows more freedom for turning your hard work into cold hard cash.', 'WordPress.com or WordPress.org? How to choose the right one for your blog', '', 'publish', 'open', 'open', '', 'wordpress-com-or-wordpress-org-how-to-choose-the-right-one-for-your-blog', '', '', '2014-10-12 18:15:01', '2014-10-12 18:15:01', '', 0, 'http://localhost:8888/starter/?p=37', 0, 'post', '', 0),
(39, 1, '2014-10-12 18:18:14', '2014-10-12 18:18:14', '<p dir="ltr">Want to know the secret to <a href="http://skillcrush.com/2013/06/16/the-best-career-decision-i-ever-made/">my success</a>? How I managed to learn how to code and immediately start making money with my coding skills, while continuing to learn?</p>\n<p dir="ltr">The answer is simple: <a href="http://skillcrush.com/2013/08/01/wordpress-for-fun-profit/wordpress.org">WordPress</a>.</p>\n<p dir="ltr">WordPress is one of those incredible <a href="http://skillcrush.com/2012/08/29/open-source-software/">open source</a> gifts that just gives and gives and gives some more. And for the beginning coder who wants to keep learning new programming skills while making some money, WordPress is hands down the way to go.</p>\n<p dir="ltr">For those of you not familiar with the platform, WordPress is an open source <a href="http://skillcrush.com/2012/05/01/cms/">content management system</a> built in PHP. Originally, WordPress was designed for blogging. But now, thanks to the creation of custom post types and the hard work of thousands of WordPress plugin developers, the platform can do much, much more.</p>\n<p dir="ltr">I, like most developers, built my first website using HTML and CSS. Shortly thereafter, a good friend of mine suggested that I look into hacking around in WordPress. What he explained to me is that WordPress was a great content management system, and could be a good way for me to get familiar with some basic programming concepts like templating, working with loops, learning about database, and more fun things like that, while also building cool custom websites.</p>\n<p dir="ltr">He spent 30 minutes explaining to me how the application is set up and where to look for more information, and that was it, I was off to the races. Me and my new friend WordPress soon became inseparable.</p>\n<p dir="ltr">For a good year or so after that, I had a great side hustle going building marketing and content publishing websites with what can only described as an <em>extremely</em> limited tech skillset.</p>\n<p dir="ltr">Now, I look back at the websites I created with WordPress before I really knew anything about programming with a mix of horror and amazement.</p>\n<p dir="ltr">But honestly, I really shouldn’t be embarrassed because though they weren’t particular programmatically exciting, WordPress made it easy to build extremely robust custom marketing and content publishing websites even with only a small set of skills. Four years later, many of <a href="http://blog.papertiger.org/">the websites</a> I built are <a href="http://www.campbaco.com/">still alive</a> and <a href="http://companyb-ny.com/">going strong</a> (wow did I love big rounded buttons or what?).</p>\n\n<h5>The top five reasons why you should learn how to build in WordPress:</h5>\n<p dir="ltr"><strong>1. Do nothing, and you’ll still have a great website</strong>\nWordpress comes out of the box with arguably, one of the best content management systems in the world (thank you open source &amp; the power of hundreds of people working together on one web application). Now, there is still a learning curve and some people do complain that the WordPress backend is a little too complicated, but honestly, as someone who has done a lot of work with other systems (and seen what it looks like when you try to building something as robust as WordPress from scratch), they really have worked out a lot of the kinks!</p>\n<p dir="ltr"><strong>2. Chances are, someone else has already solved any problem you run into</strong>\nOne of the best parts of WordPress is that you have access to a HUGE library of open source <a href="http://wordpress.org/plugins/">WordPress plugins</a> that will allow you to customize the CMS in all manner of ways. If you find yourself wanting to add some functionality to your site that isn’t native to the platform (a slideshow, a contact form, a facebook login) chances are someone else has wanted to add that functionality and already done the hard work for you. And all you have to do is install the plugin!</p>\n<p dir="ltr"><strong>3. When you are lost, WordPress has the best docs</strong>\n<a href="http://codex.wordpress.org/Main_Page">The WordPress Codex</a> is seriously the most amazing, wonderful, searchable group of docs every created for any open source project ever. Anyone who has worked with other open source web applications or content management systems (*cough* Drupal *cough*) can tell you that the WordPress documents are spectacularly thorough, clear, and easy to use. If this is your first experience, know you are being seriously SPOILED.</p>\n<p dir="ltr"><strong>4. Did we mention the 5 minute install?</strong>\nOh, by the way, WordPress is incredibly easy to install on your local machine (let me introduce you to my friend <a href="http://www.wampserver.com/en/">WAMP</a> and <a href="http://www.mamp.info/en/index.html">MAMP</a> and the famous, <a href="http://codex.wordpress.org/Installing_WordPress">5 minute WordPress install</a>), and is supported by practically every web hosting service in the world. In fact, major web hosts like GoDaddy and <a href="http://hostgator.com/">HostGator</a> offer fancy things like “1-click” WordPress installation services that will have you up and running in a matter of seconds.</p>\n<p dir="ltr"><strong>5. And most importantly, knowing how to hack WordPress is known to lead to some serious CA$H\n</strong>Last, but not least, knowing how to customize WordPress is a seriously marketable tech skill. There are many many freelancers and companies that have built entire careers on hacking WordPress. Just ask our friend <a href="http://skillcrush.com/2013/04/05/zoe-rooney/">Zoe</a>!</p>\n<p dir="ltr">Have I convinced you that WordPress is awesome? Fantastic! Watch out for a post next week about advanced WordPress techniques.</p>', 'WordPress for fun & profit', '', 'publish', 'open', 'open', '', 'wordpress-for-fun-profit', '', '', '2014-10-12 18:18:14', '2014-10-12 18:18:14', '', 0, 'http://localhost:8888/starter/?p=39', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(47329, 1, '2014-10-02 16:40:57', '2014-10-02 16:40:57', '[download file="wp-content/uploads/2014/10/The-ULTIMATE-Guide-to-Charging-for-Freelance-Web-Design.pdf" title="The Ultimate Guide to Charging for Freelance Work"]\n<h3><a style="text-decoration: none; color: #222222; font-weight: bold;" href="http://skillcrush.com/2014/09/29/skillcrushtv-ruby-pro/" target="_blank">Are you charging too much?</a></h3>\nOr not enough?\n\nWhen you are a freelancer, you set your own prices. There''s no boss to give you a raise, and no HR manager to negotiate your salary with.\n\nGetting your first couple freelance jobs is exhilarating. Someone is trusting YOU with their business, putting their brand in YOUR hands. It''s easy to feel like you are the lucky one. <em>They hired ME? But I''ve only been doing this for a few months!</em>\n\nEven so, didn''t you start this whole freelancing thing so you could up your income? But how can you avoid lowballing your client if you aren''t sure what fees are standard in the industry?\n\nWhen it comes to setting your freelance rates, there''s no one-size-fits-all. There are so many questions to consider: <em>How long will the project take? Is the client a breeze to work with? (or not?) How much money do you need to make to turn a profit? How much experience do you have?</em>\n\nSkillcrush designer (and experienced freelancer) Kristina Zmaic came up with the ULTIMATE guide to calculating your rates as a freelancer. Below, you''ll find a free PDF download that will help you decide what to charge, whether you''re a fresh-faced rookie building custom icons or a long-time WordPress developer.\n\nSo don''t let your first clients make you TOO starry-eyed. Enter your email address, download the FREE PDF guide, and calculate a freelance rate that will pay the bills, and then some!\n\n[download file="wp-content/uploads/2014/10/The-ULTIMATE-Guide-to-Charging-for-Freelance-Web-Design.pdf" title="The Ultimate Guide to Charging for Freelance Work"]\n\n<em>Are you SO ready to freelance, but lacking a few skills? <strong>You are just in time!</strong> Our next round of Skillcrush Career Blueprints start Monday, October 6. Learn web design or web development in a supportive community of fellow learners and passionate instructors, or join our brand new (!) WordPress Developer Blueprint. <a href="http://skillcrush.com/skillcrush-blueprints/" target="_blank">Sign up here</a>.</em>\n\n<em>No idea where to start? Freelancing on the side? Launching a whole new career? Something else?! I''m <a href="http://skillcrush.com/webinar-oct3-signup-page">hosting a webinar</a> TOMORROW at 1:00 p.m. CST to help you decide what career change is right for you, and where to go to learn the skills you need to make your dream a reality. <a href="http://skillcrush.com/webinar-oct3-signup-page">Sign up now</a>!</em>', 'How Much Should You Charge for Freelance Web Design?', 'Setting your freelance rates: demystified. ', 'publish', 'open', 'open', '', 'freelance-rates', '', '', '2014-10-02 16:40:57', '2014-10-02 16:40:57', '', 0, 'http://skillcrush.com/?p=47329', 0, 'post', '', 0),
(47330, 1, '2017-04-11 23:13:19', '2017-04-11 23:13:19', 'This is a project I made for this company.\r\nHere is the early stage startup that I helped design\r\nand did front-end and back-end dev for.\r\n<div class="case-study-images"></div>', 'MailChimp Campaign', '', 'publish', 'closed', 'closed', '', 'mailchimp-campaign', '', '', '2017-05-07 16:33:00', '2017-05-07 16:33:00', '', 0, 'http://localhost/accelerate/?post_type=case_studies&#038;p=47330', 0, 'case_studies', '', 0),
(47331, 1, '2017-04-11 23:08:22', '2017-04-11 23:08:22', '', 'mc-thumbnail-1', '', 'inherit', 'open', 'closed', '', 'mc-thumbnail-1', '', '', '2017-04-11 23:08:22', '2017-04-11 23:08:22', '', 47330, 'http://localhost/accelerate/wp-content/uploads/2017/04/mc-thumbnail-1.png', 0, 'attachment', 'image/png', 0),
(47332, 1, '2017-04-11 23:08:23', '2017-04-11 23:08:23', '', 'mc-thumbnail-2', '', 'inherit', 'open', 'closed', '', 'mc-thumbnail-2', '', '', '2017-04-11 23:08:23', '2017-04-11 23:08:23', '', 47330, 'http://localhost/accelerate/wp-content/uploads/2017/04/mc-thumbnail-2.png', 0, 'attachment', 'image/png', 0),
(47333, 1, '2017-04-11 23:08:23', '2017-04-11 23:08:23', '', 'mc-thumbnail-3', '', 'inherit', 'open', 'closed', '', 'mc-thumbnail-3', '', '', '2017-04-11 23:08:23', '2017-04-11 23:08:23', '', 47330, 'http://localhost/accelerate/wp-content/uploads/2017/04/mc-thumbnail-3.png', 0, 'attachment', 'image/png', 0),
(47336, 1, '2017-04-17 23:19:26', '2017-04-17 23:19:26', '', 'Case Studies', '', 'publish', 'closed', 'closed', '', 'acf_case-studies', '', '', '2017-04-30 11:21:29', '2017-04-30 11:21:29', '', 0, 'http://localhost/accelerate/?post_type=acf&#038;p=47336', 0, 'acf', '', 0),
(47337, 1, '2017-04-17 23:48:14', '2017-04-17 23:48:14', '<aside class="case-study-sidebar">\n<h1>Mailchimp Campaign</h1>\n<h6>Content Strategy, Design &amp; Development</h6>\n<h3>Client: Mailchimp</h3>\n<p>This is a project I made for this company for this. <br>\nHere is the early stage startup that I helped design<br> and did front-end and back-end dev for.</p>\n<h3>Visit Live Site</h3>\n</aside>\n\n<div class="">\n<a href="http://localhost/accelerate/wp-content/uploads/2017/04/mc-thumbnail-1.png"><img class="size-medium wp-image-47331 aligncenter" src="http://localhost/accelerate/wp-content/uploads/2017/04/mc-thumbnail-1-300x221.png" alt="" width="300" height="221" /></a>\n\n<a href="http://localhost/accelerate/wp-content/uploads/2017/04/mc-thumbnail-2.png"><img class="size-medium wp-image-47332 aligncenter" src="http://localhost/accelerate/wp-content/uploads/2017/04/mc-thumbnail-2-223x300.png" alt="" width="223" height="300" /></a>\n\n<a href="http://localhost/accelerate/wp-content/uploads/2017/04/mc-thumbnail-3.png"><img class="size-medium wp-image-47333 alignright" src="http://localhost/accelerate/wp-content/uploads/2017/04/mc-thumbnail-3-150x300.png" alt="" width="150" height="300" /></a>\n</div>', 'MailChimp Campaign', '', 'inherit', 'closed', 'closed', '', '47330-autosave-v1', '', '', '2017-04-17 23:48:14', '2017-04-17 23:48:14', '', 47330, 'http://localhost/accelerate/47330-autosave-v1/', 0, 'revision', '', 0),
(47340, 1, '2017-05-14 13:30:11', '2017-05-14 13:30:11', 'Have a question? Interested in talking development? Reach out to us and we will get back to you as soon as possible!', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-05-14 13:30:11', '2017-05-14 13:30:11', '', 0, 'http://localhost/accelerate/?page_id=47340', 0, 'page', '', 0),
(47341, 1, '2017-05-14 13:30:11', '2017-05-14 13:30:11', 'Have a question? Interested in talking development? Reach out to us and we will get back to you as soon as possible!', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '47340-revision-v1', '', '', '2017-05-14 13:30:11', '2017-05-14 13:30:11', '', 47340, 'http://localhost/accelerate/2017/05/14/47340-revision-v1/', 0, 'revision', '', 0),
(47342, 1, '2017-05-14 13:56:19', '2017-05-14 13:56:19', '', '', '', 'publish', 'closed', 'closed', '', '47342', '', '', '2017-05-14 13:56:19', '2017-05-14 13:56:19', '', 0, 'http://localhost/accelerate/nf_sub/47342/', 0, 'nf_sub', '', 0),
(47343, 1, '2017-05-30 23:19:08', '2017-05-30 23:19:08', '', '', '', 'publish', 'closed', 'closed', '', '47343', '', '', '2017-05-30 23:19:08', '2017-05-30 23:19:08', '', 0, 'http://localhost/accelerate/nf_sub/47343/', 0, 'nf_sub', '', 0),
(47344, 1, '2017-05-30 23:30:12', '2017-05-30 23:30:12', '', '', '', 'publish', 'closed', 'closed', '', '47344', '', '', '2017-05-30 23:30:12', '2017-05-30 23:30:12', '', 0, 'http://localhost/accelerate/nf_sub/47344/', 0, 'nf_sub', '', 0),
(47348, 1, '2017-05-31 00:06:55', '2017-05-31 00:06:55', 'Our Services\r\n\r\nWe take pride in our clients and the content we create for them.\r\n\r\nHere''s a brief overview of our offered services.\r\n<h2>Content Strategy</h2>\r\nBacon ipsum dolor amet beef landjaeger filet mignon bacon tongue, burgdoggen shankle tenderloin rump. Shankle fatback salami bresaola ground round jowl chuck. Shoulder landjaeger rump kevin leberkas turkey, beef ribs capicola chicken venison hamburger ham hock short loin. Boudin brisket pancetta, ground round picanha venison pork loin beef ribs pig pork turducken. Tenderloin sirloin boudin venison jowl. Salami pancetta pastrami prosciutto, ham frankfurter picanha pork chop tri-tip andouille.\r\n<h2>Influencer Mapping</h2>\r\nTongue pork belly pork loin brisket meatloaf, rump bacon flank short ribs t-bone venison. Sirloin hamburger beef flank. Chuck turducken bresaola shank alcatra ground round boudin hamburger ribeye pork strip steak porchetta. Filet mignon shankle short ribs turkey, tenderloin strip steak sirloin short loin burgdoggen.\r\n<h2>Social Media Strategy</h2>\r\nTurducken pig corned beef pancetta porchetta ball tip short ribs alcatra pork ribeye strip steak kevin cow capicola. Hamburger prosciutto cow pork loin pork shankle. Sirloin capicola pastrami, tri-tip tenderloin tongue pork chop strip steak chicken ham hock landjaeger meatloaf beef ribs venison. Prosciutto t-bone brisket frankfurter ham hock venison short ribs. Jowl fatback turkey filet mignon, bresaola ham hock boudin pancetta picanha porchetta pork loin tenderloin.\r\n<h2>Design &amp; Development</h2>\r\nTongue venison cow shankle, turkey cupim burgdoggen prosciutto short ribs boudin jerky picanha meatball. Fatback salami turkey, pastrami ground round pig ball tip cow swine. Beef alcatra kielbasa turkey burgdoggen spare ribs cupim beef ribs ball tip pig. Tongue picanha venison tenderloin. Tongue capicola fatback short loin tenderloin turducken turkey meatloaf, bacon tail.\r\n<h2 style="text-align: center;">Interested In Working With Us?</h2>', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-05-31 00:20:37', '2017-05-31 00:20:37', '', 0, 'http://localhost/accelerate/?page_id=47348', 0, 'page', '', 0),
(47349, 1, '2017-05-31 00:06:55', '2017-05-31 00:06:55', '', 'About', '', 'inherit', 'closed', 'closed', '', '47348-revision-v1', '', '', '2017-05-31 00:06:55', '2017-05-31 00:06:55', '', 47348, 'http://localhost/accelerate/2017/05/31/47348-revision-v1/', 0, 'revision', '', 0),
(47350, 1, '2017-05-31 00:20:48', '2017-05-31 00:20:48', 'Our Services\r\n\r\nWe take pride in our clients and the content we create for them.\r\n\r\nHere''s a brief overview of our offered services.\r\n<h2>Content Strategy</h2>\r\nBacon ipsum dolor amet beef landjaeger filet mignon bacon tongue, burgdoggen shankle tenderloin rump. Shankle fatback salami bresaola ground round jowl chuck. Shoulder landjaeger rump kevin leberkas turkey, beef ribs capicola chicken venison hamburger ham hock short loin. Boudin brisket pancetta, ground round picanha venison pork loin beef ribs pig pork turducken. Tenderloin sirloin boudin venison jowl. Salami pancetta pastrami prosciutto, ham frankfurter picanha pork chop tri-tip andouille.\r\n<h2>Influencer Mapping</h2>\r\nTongue pork belly pork loin brisket meatloaf, rump bacon flank short ribs t-bone venison. Sirloin hamburger beef flank. Chuck turducken bresaola shank alcatra ground round boudin hamburger ribeye pork strip steak porchetta. Filet mignon shankle short ribs turkey, tenderloin strip steak sirloin short loin burgdoggen.\r\n<h2>Social Media Strategy</h2>\r\nTurducken pig corned beef pancetta porchetta ball tip short ribs alcatra pork ribeye strip steak kevin cow capicola. Hamburger prosciutto cow pork loin pork shankle. Sirloin capicola pastrami, tri-tip tenderloin tongue pork chop strip steak chicken ham hock landjaeger meatloaf beef ribs venison. Prosciutto t-bone brisket frankfurter ham hock venison short ribs. Jowl fatback turkey filet mignon, bresaola ham hock boudin pancetta picanha porchetta pork loin tenderloin.\r\n<h2>Design &amp; Development</h2>\r\nTongue venison cow shankle, turkey cupim burgdoggen prosciutto short ribs boudin jerky picanha meatball. Fatback salami turkey, pastrami ground round pig ball tip cow swine. Beef alcatra kielbasa turkey burgdoggen spare ribs cupim beef ribs ball tip pig. Tongue picanha venison tenderloin. Tongue capicola fatback short loin tenderloin turducken turkey meatloaf, bacon tail.\r\n<h2 style="text-align: center;">Interested In Working With Us?</h2>', 'About', '', 'inherit', 'closed', 'closed', '', '47348-autosave-v1', '', '', '2017-05-31 00:20:48', '2017-05-31 00:20:48', '', 47348, 'http://localhost/accelerate/2017/05/31/47348-autosave-v1/', 0, 'revision', '', 0),
(47351, 1, '2017-05-31 00:20:37', '2017-05-31 00:20:37', 'Our Services\r\n\r\nWe take pride in our clients and the content we create for them.\r\n\r\nHere''s a brief overview of our offered services.\r\n<h2>Content Strategy</h2>\r\nBacon ipsum dolor amet beef landjaeger filet mignon bacon tongue, burgdoggen shankle tenderloin rump. Shankle fatback salami bresaola ground round jowl chuck. Shoulder landjaeger rump kevin leberkas turkey, beef ribs capicola chicken venison hamburger ham hock short loin. Boudin brisket pancetta, ground round picanha venison pork loin beef ribs pig pork turducken. Tenderloin sirloin boudin venison jowl. Salami pancetta pastrami prosciutto, ham frankfurter picanha pork chop tri-tip andouille.\r\n<h2>Influencer Mapping</h2>\r\nTongue pork belly pork loin brisket meatloaf, rump bacon flank short ribs t-bone venison. Sirloin hamburger beef flank. Chuck turducken bresaola shank alcatra ground round boudin hamburger ribeye pork strip steak porchetta. Filet mignon shankle short ribs turkey, tenderloin strip steak sirloin short loin burgdoggen.\r\n<h2>Social Media Strategy</h2>\r\nTurducken pig corned beef pancetta porchetta ball tip short ribs alcatra pork ribeye strip steak kevin cow capicola. Hamburger prosciutto cow pork loin pork shankle. Sirloin capicola pastrami, tri-tip tenderloin tongue pork chop strip steak chicken ham hock landjaeger meatloaf beef ribs venison. Prosciutto t-bone brisket frankfurter ham hock venison short ribs. Jowl fatback turkey filet mignon, bresaola ham hock boudin pancetta picanha porchetta pork loin tenderloin.\r\n<h2>Design &amp; Development</h2>\r\nTongue venison cow shankle, turkey cupim burgdoggen prosciutto short ribs boudin jerky picanha meatball. Fatback salami turkey, pastrami ground round pig ball tip cow swine. Beef alcatra kielbasa turkey burgdoggen spare ribs cupim beef ribs ball tip pig. Tongue picanha venison tenderloin. Tongue capicola fatback short loin tenderloin turducken turkey meatloaf, bacon tail.\r\n<h2 style="text-align: center;">Interested In Working With Us?</h2>', 'About', '', 'inherit', 'closed', 'closed', '', '47348-revision-v1', '', '', '2017-05-31 00:20:37', '2017-05-31 00:20:37', '', 47348, 'http://localhost/accelerate/2017/05/31/47348-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Nav', 'top-nav', 0),
(3, 'Social Media Nav', 'social-media-nav', 0),
(4, 'Listicles', 'listicles', 0),
(5, 'Career', 'career', 0),
(6, 'WordPress', 'wordpress', 0),
(7, 'Advice', 'advice', 0),
(8, 'Apps', 'apps', 0),
(9, 'Technology', 'technology', 0),
(10, 'Blog', 'blog', 0),
(11, 'Career Success', 'career-success', 0),
(12, 'charge', 'charge', 0),
(13, 'design', 'design', 0),
(14, 'freelance', 'freelance', 0),
(15, 'Freelancing', 'freelancing', 0),
(16, 'prices', 'prices', 0),
(17, 'rates', 'rates', 0),
(18, 'web design', 'web-design-2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(10, 2, 0),
(13, 3, 0),
(14, 3, 0),
(19, 4, 0),
(26, 5, 0),
(28, 6, 0),
(31, 7, 0),
(33, 8, 0),
(35, 9, 0),
(36, 5, 0),
(36, 6, 0),
(37, 6, 0),
(39, 6, 0),
(47329, 10, 0),
(47329, 11, 0),
(47329, 12, 0),
(47329, 13, 0),
(47329, 14, 0),
(47329, 15, 0),
(47329, 16, 0),
(47329, 17, 0),
(47329, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 4),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'category', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"8f7376fa2548cffda275fff69d2830073285c3988397401312ba03b10516190d";a:4:{s:10:"expiration";i:1496685358;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36";s:5:"login";i:1496512558;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '47345'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1493550115'),
(19, 1, 'closedpostboxes_acf', 'a:0:{}'),
(20, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:"slugdiv";}'),
(22, 1, 'wp_nf_form_preview_1', 'a:4:{s:2:"id";i:1;s:8:"settings";a:101:{s:10:"objectType";s:12:"Form Setting";s:10:"editActive";s:0:"";s:5:"title";s:10:"Contact Me";s:3:"key";s:0:"";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:17:"default_label_pos";s:5:"above";s:10:"conditions";a:0:{}s:10:"show_title";s:1:"1";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:13:"wrapper_class";s:0:"";s:13:"element_class";s:0:"";s:10:"add_submit";s:1:"1";s:9:"logged_in";s:0:"";s:17:"not_logged_in_msg";s:0:"";s:16:"sub_limit_number";s:0:"";s:13:"sub_limit_msg";s:0:"";s:12:"calculations";a:0:{}s:15:"formContentData";a:4:{i:0;s:23:"firstname_1494769113180";i:1;s:19:"email_1494769100366";i:2;s:22:"textarea_1494769123355";i:3;s:20:"submit_1494769126036";}s:33:"container_styles_background-color";s:0:"";s:23:"container_styles_border";s:0:"";s:29:"container_styles_border-style";s:0:"";s:29:"container_styles_border-color";s:0:"";s:22:"container_styles_color";s:0:"";s:23:"container_styles_height";s:0:"";s:22:"container_styles_width";s:0:"";s:26:"container_styles_font-size";s:0:"";s:23:"container_styles_margin";s:0:"";s:24:"container_styles_padding";s:0:"";s:24:"container_styles_display";s:0:"";s:22:"container_styles_float";s:0:"";s:34:"container_styles_show_advanced_css";s:1:"0";s:25:"container_styles_advanced";s:0:"";s:29:"title_styles_background-color";s:0:"";s:19:"title_styles_border";s:0:"";s:25:"title_styles_border-style";s:0:"";s:25:"title_styles_border-color";s:0:"";s:18:"title_styles_color";s:0:"";s:19:"title_styles_height";s:0:"";s:18:"title_styles_width";s:0:"";s:22:"title_styles_font-size";s:0:"";s:19:"title_styles_margin";s:0:"";s:20:"title_styles_padding";s:0:"";s:20:"title_styles_display";s:0:"";s:18:"title_styles_float";s:0:"";s:30:"title_styles_show_advanced_css";s:1:"0";s:21:"title_styles_advanced";s:0:"";s:27:"row_styles_background-color";s:0:"";s:17:"row_styles_border";s:0:"";s:23:"row_styles_border-style";s:0:"";s:23:"row_styles_border-color";s:0:"";s:16:"row_styles_color";s:0:"";s:17:"row_styles_height";s:0:"";s:16:"row_styles_width";s:0:"";s:20:"row_styles_font-size";s:0:"";s:17:"row_styles_margin";s:0:"";s:18:"row_styles_padding";s:0:"";s:18:"row_styles_display";s:0:"";s:28:"row_styles_show_advanced_css";s:1:"0";s:19:"row_styles_advanced";s:0:"";s:31:"row-odd_styles_background-color";s:0:"";s:21:"row-odd_styles_border";s:0:"";s:27:"row-odd_styles_border-style";s:0:"";s:27:"row-odd_styles_border-color";s:0:"";s:20:"row-odd_styles_color";s:0:"";s:21:"row-odd_styles_height";s:0:"";s:20:"row-odd_styles_width";s:0:"";s:24:"row-odd_styles_font-size";s:0:"";s:21:"row-odd_styles_margin";s:0:"";s:22:"row-odd_styles_padding";s:0:"";s:22:"row-odd_styles_display";s:0:"";s:32:"row-odd_styles_show_advanced_css";s:1:"0";s:23:"row-odd_styles_advanced";s:0:"";s:35:"success-msg_styles_background-color";s:0:"";s:25:"success-msg_styles_border";s:0:"";s:31:"success-msg_styles_border-style";s:0:"";s:31:"success-msg_styles_border-color";s:0:"";s:24:"success-msg_styles_color";s:0:"";s:25:"success-msg_styles_height";s:0:"";s:24:"success-msg_styles_width";s:0:"";s:28:"success-msg_styles_font-size";s:0:"";s:25:"success-msg_styles_margin";s:0:"";s:26:"success-msg_styles_padding";s:0:"";s:26:"success-msg_styles_display";s:0:"";s:36:"success-msg_styles_show_advanced_css";s:1:"0";s:27:"success-msg_styles_advanced";s:0:"";s:33:"error_msg_styles_background-color";s:0:"";s:23:"error_msg_styles_border";s:0:"";s:29:"error_msg_styles_border-style";s:0:"";s:29:"error_msg_styles_border-color";s:0:"";s:22:"error_msg_styles_color";s:0:"";s:23:"error_msg_styles_height";s:0:"";s:22:"error_msg_styles_width";s:0:"";s:26:"error_msg_styles_font-size";s:0:"";s:23:"error_msg_styles_margin";s:0:"";s:24:"error_msg_styles_padding";s:0:"";s:24:"error_msg_styles_display";s:0:"";s:34:"error_msg_styles_show_advanced_css";s:1:"0";s:25:"error_msg_styles_advanced";s:0:"";s:8:"currency";s:0:"";s:8:"_seq_num";s:1:"3";}s:6:"fields";a:4:{i:5;a:1:{s:8:"settings";a:17:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:2;s:5:"label";s:5:"Email";s:4:"type";s:5:"email";s:3:"key";s:19:"email_1494769100366";s:9:"label_pos";s:7:"default";s:8:"required";b:0;s:7:"default";s:0:"";s:11:"placeholder";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:14:"drawerDisabled";b:0;}}i:6;a:1:{s:8:"settings";a:16:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:1;s:5:"label";s:10:"First Name";s:4:"type";s:9:"firstname";s:3:"key";s:23:"firstname_1494769113180";s:9:"label_pos";s:7:"default";s:8:"required";b:0;s:7:"default";s:0:"";s:11:"placeholder";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";}}i:7;a:1:{s:8:"settings";a:25:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:3;s:4:"type";s:8:"textarea";s:5:"label";s:14:"Paragraph Text";s:3:"key";s:22:"textarea_1494769123355";s:9:"label_pos";s:7:"default";s:8:"required";b:0;s:7:"default";s:0:"";s:11:"placeholder";s:0:"";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:10:"characters";s:15:"input_limit_msg";s:17:"Character(s) left";s:10:"manual_key";b:0;s:13:"disable_input";s:0:"";s:11:"admin_label";s:0:"";s:9:"help_text";s:0:"";s:9:"desc_text";s:0:"";s:28:"disable_browser_autocomplete";s:0:"";s:12:"textarea_rte";s:0:"";s:18:"disable_rte_mobile";s:0:"";s:14:"textarea_media";s:0:"";}}i:8;a:1:{s:8:"settings";a:10:{s:10:"objectType";s:5:"Field";s:12:"objectDomain";s:6:"fields";s:10:"editActive";b:0;s:5:"order";i:4;s:4:"type";s:6:"submit";s:5:"label";s:6:"Submit";s:16:"processing_label";s:10:"Processing";s:15:"container_class";s:0:"";s:13:"element_class";s:0:"";s:3:"key";s:20:"submit_1494769126036";}}}s:7:"actions";a:3:{i:1;a:1:{s:8:"settings";a:25:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:4:"save";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:5:"label";s:16:"Save to Database";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:0:"";s:13:"email_subject";s:0:"";s:13:"email_message";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:12:"redirect_url";s:0:"";s:19:"email_message_plain";s:0:"";}}i:3;a:1:{s:8:"settings";a:24:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2016-08-24 16:47:39";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:5:"label";s:18:"Email Notification";s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:1:{i:0;a:6:{s:9:"connector";s:3:"AND";s:3:"key";s:0:"";s:10:"comparator";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"when";}}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:2:"to";s:20:"{system:admin_email}";s:13:"email_subject";s:29:"New message from {field:name}";s:13:"email_message";s:63:"<p>{field:message}</p><p>- {field:name} ( {field:email} )</p>";s:8:"reply_to";s:0:"";s:19:"email_message_plain";s:0:"";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";}}i:2;a:1:{s:8:"settings";a:26:{s:5:"title";s:0:"";s:3:"key";s:0:"";s:4:"type";s:5:"email";s:6:"active";s:1:"1";s:10:"created_at";s:19:"2016-08-24 16:39:20";s:5:"label";s:18:"Email Confirmation";s:2:"to";s:13:"{field:email}";s:7:"subject";s:24:"This is an email action.";s:7:"message";s:19:"Hello, Ninja Forms!";s:10:"objectType";s:6:"Action";s:12:"objectDomain";s:7:"actions";s:10:"editActive";b:0;s:10:"conditions";a:6:{s:9:"collapsed";s:0:"";s:7:"process";s:1:"1";s:9:"connector";s:3:"all";s:4:"when";a:0:{}s:4:"then";a:1:{i:0;a:5:{s:3:"key";s:0:"";s:7:"trigger";s:0:"";s:5:"value";s:0:"";s:4:"type";s:5:"field";s:9:"modelType";s:4:"then";}}s:4:"else";a:0:{}}s:16:"payment_gateways";s:0:"";s:13:"payment_total";s:0:"";s:3:"tag";s:0:"";s:13:"email_subject";s:24:"Submission Confirmation ";s:13:"email_message";s:29:"<p>{field:all_fields}<br></p>";s:9:"from_name";s:0:"";s:12:"from_address";s:0:"";s:8:"reply_to";s:0:"";s:12:"email_format";s:4:"html";s:2:"cc";s:0:"";s:3:"bcc";s:0:"";s:10:"attach_csv";s:0:"";s:19:"email_message_plain";s:0:"";}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bf93nxEBZsiwOOSXe0Cj7sTKIJT7vh1', 'admin', 'vsantos07@verizon.net', '', '2017-03-21 23:20:04', '1490138436:$P$BOU8Rl5m0s043SId/h7PcYYMVq2hRd1', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `post_name` (`post_name`(191));

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=571;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47352;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
