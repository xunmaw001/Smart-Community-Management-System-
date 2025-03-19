-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssma1g27
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baoxiuxinxi`
--

DROP TABLE IF EXISTS `baoxiuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baoxiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `baoxiuwupin` varchar(200) NOT NULL COMMENT '报修物品',
  `baoxiuwenti` longtext COMMENT '报修问题',
  `baoxiuriqi` datetime DEFAULT NULL COMMENT '报修日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620614250827 DEFAULT CHARSET=utf8 COMMENT='报修信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baoxiuxinxi`
--

LOCK TABLES `baoxiuxinxi` WRITE;
/*!40000 ALTER TABLE `baoxiuxinxi` DISABLE KEYS */;
INSERT INTO `baoxiuxinxi` VALUES (61,'2021-05-10 02:26:45','名称1','报修物品1','报修问题1','2021-05-10 10:26:45','用户名1','姓名1','是',''),(62,'2021-05-10 02:26:45','名称2','报修物品2','报修问题2','2021-05-10 10:26:45','用户名2','姓名2','是',''),(63,'2021-05-10 02:26:45','名称3','报修物品3','报修问题3','2021-05-10 10:26:45','用户名3','姓名3','是',''),(64,'2021-05-10 02:26:45','名称4','报修物品4','报修问题4','2021-05-10 10:26:45','用户名4','姓名4','是',''),(65,'2021-05-10 02:26:45','名称5','报修物品5','报修问题5','2021-05-10 10:26:45','用户名5','姓名5','是',''),(66,'2021-05-10 02:26:45','名称6','报修物品6','报修问题6','2021-05-10 10:26:45','用户名6','姓名6','是',''),(1620614250826,'2021-05-10 02:37:30','我要报修','XX物品','测试','2021-05-20 00:00:00','2','王飞','是','好的 会派人去处理的');
/*!40000 ALTER TABLE `baoxiuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssma1g27/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssma1g27/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssma1g27/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `yuezujin` varchar(200) DEFAULT NULL COMMENT '月租金',
  `zulinshizhang` int(11) NOT NULL COMMENT '租赁时长',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zulinriqi` date DEFAULT NULL COMMENT '租赁日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620614191115 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (51,'2021-05-10 02:26:45','订单编号1','房屋名称1','房屋类型1','月租金1',1,1,'备注1','2021-05-10','用户名1','姓名1','手机1','是','','未支付'),(52,'2021-05-10 02:26:45','订单编号2','房屋名称2','房屋类型2','月租金2',2,2,'备注2','2021-05-10','用户名2','姓名2','手机2','是','','未支付'),(53,'2021-05-10 02:26:45','订单编号3','房屋名称3','房屋类型3','月租金3',3,3,'备注3','2021-05-10','用户名3','姓名3','手机3','是','','未支付'),(54,'2021-05-10 02:26:45','订单编号4','房屋名称4','房屋类型4','月租金4',4,4,'备注4','2021-05-10','用户名4','姓名4','手机4','是','','未支付'),(55,'2021-05-10 02:26:45','订单编号5','房屋名称5','房屋类型5','月租金5',5,5,'备注5','2021-05-10','用户名5','姓名5','手机5','是','','未支付'),(56,'2021-05-10 02:26:45','订单编号6','房屋名称6','房屋类型6','月租金6',6,6,'备注6','2021-05-10','用户名6','姓名6','手机6','是','','未支付'),(1620614191114,'2021-05-10 02:36:30','202151010361334179683','201','四房一厅','800',5,4000,'我要租5个月','2021-05-10','2','王飞','15212121111','是','同意租赁','已支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfangwuxinxi`
--

DROP TABLE IF EXISTS `discussfangwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620614197279 DEFAULT CHARSET=utf8 COMMENT='房屋信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfangwuxinxi`
--

LOCK TABLES `discussfangwuxinxi` WRITE;
/*!40000 ALTER TABLE `discussfangwuxinxi` DISABLE KEYS */;
INSERT INTO `discussfangwuxinxi` VALUES (121,'2021-05-10 02:26:45',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-05-10 02:26:45',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-05-10 02:26:45',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-05-10 02:26:45',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-05-10 02:26:45',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-05-10 02:26:45',6,6,'用户名6','评论内容6','回复内容6'),(1620614197278,'2021-05-10 02:36:37',41,1620614129074,'2','666','7777');
/*!40000 ALTER TABLE `discussfangwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuxinxi`
--

DROP TABLE IF EXISTS `fangwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fangxing` varchar(200) DEFAULT NULL COMMENT '房型',
  `mianji` varchar(200) NOT NULL COMMENT '面积',
  `yuezujin` int(11) NOT NULL COMMENT '月租金',
  `zixundianhua` varchar(200) DEFAULT NULL COMMENT '咨询电话',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `xiangqing` longtext COMMENT '详情',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwumingcheng` (`fangwumingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='房屋信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuxinxi`
--

LOCK TABLES `fangwuxinxi` WRITE;
/*!40000 ALTER TABLE `fangwuxinxi` DISABLE KEYS */;
INSERT INTO `fangwuxinxi` VALUES (41,'2021-05-10 02:26:45','201','四房一厅','http://localhost:8080/ssma1g27/upload/fangwuxinxi_tupian1.jpg','电梯房','150平方米',800,'020-89819991','上海市','<p><img src=\"http://localhost:8080/ssma1g27/upload/1620614058566.jpg\"></p><p><img src=\"http://localhost:8080/ssma1g27/upload/1620614063259.jpg\"></p><p><img src=\"http://localhost:8080/ssma1g27/upload/1620614067237.jpg\"></p><p>这里可以上传多张图片，这里的所有内容都是可以自行添加的，也可以图文结合描述的，。</p>','已出租'),(42,'2021-05-10 02:26:45','房屋名称2','房屋类型2','http://localhost:8080/ssma1g27/upload/fangwuxinxi_tupian2.jpg','电梯房','面积2',2,'020-89819992','详细地址2','详情2','待出租'),(43,'2021-05-10 02:26:45','房屋名称3','房屋类型3','http://localhost:8080/ssma1g27/upload/fangwuxinxi_tupian3.jpg','电梯房','面积3',3,'020-89819993','详细地址3','详情3','待出租'),(44,'2021-05-10 02:26:45','房屋名称4','房屋类型4','http://localhost:8080/ssma1g27/upload/fangwuxinxi_tupian4.jpg','电梯房','面积4',4,'020-89819994','详细地址4','详情4','待出租'),(45,'2021-05-10 02:26:45','房屋名称5','房屋类型5','http://localhost:8080/ssma1g27/upload/fangwuxinxi_tupian5.jpg','电梯房','面积5',5,'020-89819995','详细地址5','详情5','待出租'),(46,'2021-05-10 02:26:45','房屋名称6','房屋类型6','http://localhost:8080/ssma1g27/upload/fangwuxinxi_tupian6.jpg','电梯房','面积6',6,'020-89819996','详细地址6','详情6','待出租');
/*!40000 ALTER TABLE `fangwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  `gonggaoneirong` longtext COMMENT '公告内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (31,'2021-05-10 02:26:45','XX公告','公告','http://localhost:8080/ssma1g27/upload/gonggaoxinxi_tupian1.jpg','2021-05-10 10:26:45','<p>测试<img src=\"http://localhost:8080/ssma1g27/upload/1620613903289.jpg\"></p><p>这里可以发布一些相关公告信息内容，可以图文结合描述的，这里的所有内容都是用于测试功能的，都是可以自行添加修改删除的。。。</p>'),(32,'2021-05-10 02:26:45','标题2','类型2','http://localhost:8080/ssma1g27/upload/gonggaoxinxi_tupian2.jpg','2021-05-10 10:26:45','公告内容2'),(33,'2021-05-10 02:26:45','标题3','类型3','http://localhost:8080/ssma1g27/upload/gonggaoxinxi_tupian3.jpg','2021-05-10 10:26:45','公告内容3'),(34,'2021-05-10 02:26:45','标题4','类型4','http://localhost:8080/ssma1g27/upload/gonggaoxinxi_tupian4.jpg','2021-05-10 10:26:45','公告内容4'),(35,'2021-05-10 02:26:45','标题5','类型5','http://localhost:8080/ssma1g27/upload/gonggaoxinxi_tupian5.jpg','2021-05-10 10:26:45','公告内容5'),(36,'2021-05-10 02:26:45','标题6','类型6','http://localhost:8080/ssma1g27/upload/gonggaoxinxi_tupian6.jpg','2021-05-10 10:26:45','公告内容6');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeixinxi`
--

DROP TABLE IF EXISTS `jiaofeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wuyefei` float NOT NULL COMMENT '物业费',
  `shuidianfei` float NOT NULL COMMENT '水电费',
  `kuandaifei` float NOT NULL COMMENT '宽带费',
  `cheweifei` float NOT NULL COMMENT '车位费',
  `ranqifei` float NOT NULL COMMENT '燃气费',
  `zongfeiyong` float NOT NULL COMMENT '总费用',
  `jiaofeishijian` varchar(200) DEFAULT NULL COMMENT '缴费时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620614352623 DEFAULT CHARSET=utf8 COMMENT='缴费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeixinxi`
--

LOCK TABLES `jiaofeixinxi` WRITE;
/*!40000 ALTER TABLE `jiaofeixinxi` DISABLE KEYS */;
INSERT INTO `jiaofeixinxi` VALUES (81,'2021-05-10 02:26:45','订单编号1','名称1','用户名1','姓名1',1,1,1,1,1,1,'缴费时间1','未支付'),(82,'2021-05-10 02:26:45','订单编号2','名称2','用户名2','姓名2',2,2,2,2,2,2,'缴费时间2','未支付'),(83,'2021-05-10 02:26:45','订单编号3','名称3','用户名3','姓名3',3,3,3,3,3,3,'缴费时间3','未支付'),(84,'2021-05-10 02:26:45','订单编号4','名称4','用户名4','姓名4',4,4,4,4,4,4,'缴费时间4','未支付'),(85,'2021-05-10 02:26:45','订单编号5','名称5','用户名5','姓名5',5,5,5,5,5,5,'缴费时间5','未支付'),(86,'2021-05-10 02:26:45','订单编号6','名称6','用户名6','姓名6',6,6,6,6,6,6,'缴费时间6','未支付'),(1620614352622,'2021-05-10 02:39:12','1620614323037','5月份缴费单','2','王飞',200,120,200,100,100,720,'15号之前','已支付');
/*!40000 ALTER TABLE `jiaofeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620614218975 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2021-05-10 02:26:45',1,'用户名1','留言内容1','回复内容1'),(112,'2021-05-10 02:26:45',2,'用户名2','留言内容2','回复内容2'),(113,'2021-05-10 02:26:45',3,'用户名3','留言内容3','回复内容3'),(114,'2021-05-10 02:26:45',4,'用户名4','留言内容4','回复内容4'),(115,'2021-05-10 02:26:45',5,'用户名5','留言内容5','回复内容5'),(116,'2021-05-10 02:26:45',6,'用户名6','留言内容6','回复内容6'),(1620614218974,'2021-05-10 02:36:58',1620614129074,'2','有什么可以给业主或者管理员反馈的。。。','好的 可以的');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-05-10 02:26:45','新闻资讯','简介1测试','http://localhost:8080/ssma1g27/upload/news_picture1.jpg','<p>测试<img src=\"http://localhost:8080/ssma1g27/upload/1620614016429.jpg\"></p><p>这里可以发布一些相关新闻资讯内容的。。</p>'),(102,'2021-05-10 02:26:45','标题2','简介2','http://localhost:8080/ssma1g27/upload/news_picture2.jpg','内容2'),(103,'2021-05-10 02:26:45','标题3','简介3','http://localhost:8080/ssma1g27/upload/news_picture3.jpg','内容3'),(104,'2021-05-10 02:26:45','标题4','简介4','http://localhost:8080/ssma1g27/upload/news_picture4.jpg','内容4'),(105,'2021-05-10 02:26:45','标题5','简介5','http://localhost:8080/ssma1g27/upload/news_picture5.jpg','内容5'),(106,'2021-05-10 02:26:45','标题6','简介6','http://localhost:8080/ssma1g27/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620614177270 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1620614177269,'2021-05-10 02:36:16',1620614129074,41,'fangwuxinxi','201','http://localhost:8080/ssma1g27/upload/fangwuxinxi_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','0w7r0pknz8i6fuci8ebyhdet7ixjhqw1','2021-05-10 02:29:08','2021-05-10 03:39:27'),(2,11,'1','yonghu','用户','kayg7eysm7czreitl4m9a4jzldhfjetp','2021-05-10 02:29:26','2021-05-10 03:29:26'),(3,21,'1','yezhu','管理员','48dcizymmb3g51dtf10o8r5vhhiwsruj','2021-05-10 02:29:32','2021-05-10 03:29:33'),(4,22,'2','yezhu','管理员','9ebss8n9cl2xlxsz3xhdcw6rrrkq9zm4','2021-05-10 02:33:54','2021-05-10 03:37:46'),(5,1620614129074,'2','yonghu','用户','it5d4yrly4822wg1spsvo416fhj5h7oy','2021-05-10 02:35:36','2021-05-10 03:39:45');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tousuxinxi`
--

DROP TABLE IF EXISTS `tousuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tousuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tousuneirong` longtext COMMENT '投诉内容',
  `tousushijian` datetime DEFAULT NULL COMMENT '投诉时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620614259405 DEFAULT CHARSET=utf8 COMMENT='投诉信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tousuxinxi`
--

LOCK TABLES `tousuxinxi` WRITE;
/*!40000 ALTER TABLE `tousuxinxi` DISABLE KEYS */;
INSERT INTO `tousuxinxi` VALUES (71,'2021-05-10 02:26:45','标题1','投诉内容1','2021-05-10 10:26:45','用户名1','姓名1','是',''),(72,'2021-05-10 02:26:45','标题2','投诉内容2','2021-05-10 10:26:45','用户名2','姓名2','是',''),(73,'2021-05-10 02:26:45','标题3','投诉内容3','2021-05-10 10:26:45','用户名3','姓名3','是',''),(74,'2021-05-10 02:26:45','标题4','投诉内容4','2021-05-10 10:26:45','用户名4','姓名4','是',''),(75,'2021-05-10 02:26:45','标题5','投诉内容5','2021-05-10 10:26:45','用户名5','姓名5','是',''),(76,'2021-05-10 02:26:45','标题6','投诉内容6','2021-05-10 10:26:45','用户名6','姓名6','是',''),(1620614259404,'2021-05-10 02:37:39','我要投诉','投诉。。。。','2021-05-10 10:37:23','2','王飞','是','马上核实。。');
/*!40000 ALTER TABLE `tousuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-05-10 02:26:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yezhu`
--

DROP TABLE IF EXISTS `yezhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yezhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='业主';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yezhu`
--

LOCK TABLES `yezhu` WRITE;
/*!40000 ALTER TABLE `yezhu` DISABLE KEYS */;
INSERT INTO `yezhu` VALUES (22,'2021-05-10 02:26:45','2','1','刘倩','女','http://localhost:8080/ssma1g27/upload/yezhu_touxiang2.jpg','440300199202020002','13823888882'),(23,'2021-05-10 02:26:45','业主3','123456','姓名3','男','http://localhost:8080/ssma1g27/upload/yezhu_touxiang3.jpg','440300199303030003','13823888883'),(24,'2021-05-10 02:26:45','业主4','123456','姓名4','男','http://localhost:8080/ssma1g27/upload/yezhu_touxiang4.jpg','440300199404040004','13823888884'),(25,'2021-05-10 02:26:45','业主5','123456','姓名5','男','http://localhost:8080/ssma1g27/upload/yezhu_touxiang5.jpg','440300199505050005','13823888885'),(26,'2021-05-10 02:26:45','业主6','123456','姓名6','男','http://localhost:8080/ssma1g27/upload/yezhu_touxiang6.jpg','440300199606060006','13823888886');
/*!40000 ALTER TABLE `yezhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620614129075 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-05-10 02:26:45','1','1','姓名1','男','http://localhost:8080/ssma1g27/upload/yonghu_touxiang1.jpg','440300199101010001','13823888881'),(12,'2021-05-10 02:26:45','用户2','123456','姓名2','男','http://localhost:8080/ssma1g27/upload/yonghu_touxiang2.jpg','440300199202020002','13823888882'),(13,'2021-05-10 02:26:45','用户3','123456','姓名3','男','http://localhost:8080/ssma1g27/upload/yonghu_touxiang3.jpg','440300199303030003','13823888883'),(14,'2021-05-10 02:26:45','用户4','123456','姓名4','男','http://localhost:8080/ssma1g27/upload/yonghu_touxiang4.jpg','440300199404040004','13823888884'),(15,'2021-05-10 02:26:45','用户5','123456','姓名5','男','http://localhost:8080/ssma1g27/upload/yonghu_touxiang5.jpg','440300199505050005','13823888885'),(16,'2021-05-10 02:26:45','用户6','123456','姓名6','男','http://localhost:8080/ssma1g27/upload/yonghu_touxiang6.jpg','440300199606060006','13823888886'),(1620614129074,'2021-05-10 02:35:29','2','1','王飞','男','http://localhost:8080/ssma1g27/upload/1620614151801.png','441214121412111','15212121111');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-11 20:16:17
