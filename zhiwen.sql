-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-08-06 13:57:09
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zhiwen`
--

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `titleid` smallint(6) unsigned NOT NULL,
  `user` varchar(20) CHARACTER SET utf8 NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `titleid`, `user`, `comment`, `date`) VALUES
(1, 4, 'wj89757', '哈哈哈哈', '2016-07-29 16:38:54'),
(2, 4, 'wj89757', '嘿嘿额hi是暗示的hi阿斯顿', '2016-07-29 16:39:01'),
(3, 4, 'wj89757', '你咋知道滴？', '2016-07-29 16:39:10'),
(4, 3, 'wj89757', '你好\n', '2016-07-29 17:20:56'),
(5, 3, 'wj89757', '我是第二条评论', '2016-07-29 17:21:04'),
(6, 3, 'wj89757', '？？？？', '2016-07-29 17:21:09'),
(7, 3, 'wj89757', '！！！', '2016-07-29 17:21:15'),
(8, 3, 'wj89757', '爱上大声地啊', '2016-07-29 17:21:21'),
(9, 3, 'wj89757', '。。。', '2016-07-29 17:21:28'),
(10, 3, 'wj89757', '。。。。。。。。。。', '2016-07-29 17:21:35'),
(11, 3, 'wj89757', '3213231', '2016-07-29 17:21:43'),
(12, 3, 'wj89757', 'T12131', '2016-07-29 17:21:52'),
(13, 3, 'wj89757', 'FXCZC ', '2016-07-29 17:22:15'),
(14, 3, 'wj89757', 'ASDADA S', '2016-07-29 17:22:19');

-- --------------------------------------------------------

--
-- 表的结构 `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `user` varchar(20) NOT NULL COMMENT '用户',
  `date` datetime NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='问题表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `question`
--

INSERT INTO `question` (`id`, `title`, `content`, `user`, `date`) VALUES
(1, '如何避免与他人争论？', '流氓总是会在辩论时设局坑文明人，用激将法让文明人自己给自己定规则加镣铐。不要中计。<br><br>如果对方问：“你敢不敢拿证据出来”，千万别傻乎乎地真去找证据，否则你就沦为了免费帮人查资料的冤大头。<br><br>如果对方质疑你的动机，千万别试图澄清自己，否则你就陷入了守势。<br><br>如果对方指责你专攻下三路，一定要继续坚持直白的人身攻击，否则对方会趁你思考怎么遣词造句时，用隐晦的人身攻击对付你。<br><br>只要争论对象不是朋友，就不要把争论当成公平竞赛。把脏水往对方身上一泼，然后尽量躲掉对方泼来的脏水即可。如果对方是流氓，你就避开了他们的圈套。如果对方是你讨厌的书生，就更妙了：你可以关电脑，一边想象他们气得睡不着觉的样子，一边美美地进入梦乡。<br><br>最后，为心理健康考虑，切记辩论胜利不等于胜利。', 'wj89757', '2016-07-29 10:24:49'),
(2, '为什么东北会衰退？还可能复兴吗？', '说说两条，第一条是上一辈东北人的普遍观念，认识人好办事。<br>在东北三省，从小孩出生到老人去世，如果你不找熟人，一切都走正规流程，那么只有一种结果，你前面永远有插队的，例子不用举了，在东北生活过的人都懂，说起来就恼火。<br>第二条是政府公务员的办事效率和工作态度成问题，举个亲身经历，3年前我买房，今年才下来房产证，我拿着新的房产证想把户口迁到新房所在的派出所。<br>第一天，特意挑周五上午去的，10点，户籍警就不在派出所，问值班人员说不知道去那里，要电话不给，说是警务人员隐私，并且明确告知，周六周日户籍警休息，不办公。<br>下周一，请假去的，还是上午10点，户籍警仍然不在，找值班民警，和之前的话一样。我在派出所大厅打所在区公安局投诉科电话，情况没等说完，后面出来一个挂着协警字样，穿保安制服的人上来就要抢我的手机，旁边4个穿警服的人看着他的一举一动，没人制止。我把他踹倒以后，派出所的所长还是副所长就冲出来，说我扰乱治安，袭警，要拘留我。<br>我跑出派出所直接打110报警，说明情况以后，30分钟，来了一辆巡逻车，是隔壁派出所的，接下来的情况我觉得已经不用说了，两波警察一碰面就开始聊上了，又过了30分钟，那个50岁的女户籍警才不知道从什么地方回来，态度特别不好，把相关材料递交给她，然后她让我必须提供3份复印材料，之前在网上看只需要1份就可以，不提交办不了。<br>然后她身边就有复印机，说不可以用，是派出所内部使用的，要出去复印，周边根本没有可以打印复印的地方，如果我现在出去弄，等折腾回来，4点钟户籍警就下班了。一分钟都不多等。<br>只能回家第二天再去。<br>周二早上8点赶到派出所，户籍警在，前面还有2个人在等，结果就不停的有插队的，数次上去询问，就是丢过来一句，想办你就等着，不想办可以走。一直等到11点30份她准备午休，我把户籍警拦下来，问什么时候能给我办理业务，这位户籍警丢过来一句，现在是午休时间，1点以后开始办公。然后头也不回的就走了。<br>下午1点，果不其然户籍警没有出现。拨打市长公开投诉电话说明情况，然后打车去所在区分局投诉科，在分局把所有情况说明了，在分局等。<br>市长公开电话和分局的工作人员效率不能说太高，起码比派出所的效率要强，2个小时以后的下午3点半，分局和派出所方面核实过情况并调取周一派出所大厅的监控录像，接受投诉并且在分局户籍科特例办理了户口迁移。但是当事人，包括派出所户籍警，上来抢手机的那个协警，威胁要对我实施治安拘留的所长还是副所长，没有一个人出来公开道歉。<br>我以为事情就这样结束了，当天晚上，我在户籍信息上留的那个手机号码接到了一个本地手机号的来电，让我小心点，一个老百姓别他妈的搞那么多事，县官不如现管，我的住址手机号码身份信息都在派出所，想收拾我随时都行，别给自己找不痛快。<br>我沉默了，考虑到家人和孩子的安全，没有再进行任何后续投诉。<br>这就是东北三省部分公务员的现状，基层人民公仆都是这种思维方式，这种办事效率。<br>东北已经完了，烂到骨子里了，现在只想赚两年钱把房子卖掉离开这里。<br>原谅我匿名，虽然我不知道会不会有人看到这个评论。给还在东北三省生活，家里没有所谓的熟人没有门路的普通老百姓一句劝告，有能力一定要出去，离开这里。<br><br>PS，很多人问地点，恕我不能直言，只能说是黑龙江省某个县级市，前几年刚刚把行政等级提到县级市的。<br>我自己做销售，家里加盟了一个连锁超市，媳妇在经营。儿子两岁，我父母和我们住在一起，丈母娘和小舅子一家住一起，在吉林那边。全家人一起努力，日子过的还凑合吧。<br>其次是之前回答里劝有能力的人出去的话，我不想收回，东北三省留不住人，每年高考出去的孩子们有多少毕业后回来的？东北这么多大学，每年毕业那么多大学生，又有多少留在东北的？<br>我一个老百姓，手里没有大数据，也没有亲自做过抽样统计问卷。但我是个销售人员，接触的客户不少也不算太多，大部分客户是东北的，和这些人唠嗑，很多人的孩子毕业了宁可在北上广深和人合租，挤地铁挤公交，每年攒不下什么钱，也不愿回东北。东北父母的总有这样的疑问，你在外面打拼，又买不起房，家里有现成的房子，老家生活成本低，为什么不回来？<br>为什么不回来？为什么像我这样35岁的中年人还打算把房子卖掉，把店兑出去，带着父母妻儿一起换个南方城市生活？<br>只有经历过，亲眼见过某些人和某些事，才会懂。<br>谢谢大家的评论和帮助，谢谢。', 'wj89757', '2016-07-29 10:25:10'),
(4, '如何评价比尔·克林顿在 2016 年民主党大会上为希拉里做的演讲？', '比尔克林顿的演说和撰稿能力，确实再一次充分体现出来了。他把一个不可能完成的任务做到了最好（比奥巴马夫人做的更好）。<br><br>为什么说比尔克林顿面临一个不可能完成的任务呢，理由如下：<br><br>一、希拉里作为一个总统候选人，存在难以克服硬伤1、诚信不被人相信；2、作为国务卿，把事情办的一团糟；3、她的经济政策（不是指她的生活费发放政策）其实是损坏99%的民主党选民的利益的；4、不择手段，邪恶（这次邮件门，高盛演说，基金会）；基于这些硬伤，其实没有办法辩护。<br><br>二、对于川普，不能直接反驳，否则演讲就变成不是支持希拉里，而是抨击川普的演说了。<br><br>三、必须告诉选民，希拉里适合担任美国总统（尽管从德才两个方面来衡量她之前作为国务卿和竞选者都不合格）<br><br>比尔克林顿，充分利用他作为前总统和丈夫的双重身份，以家人介绍的角度从两个方面来克服了以上三个障碍：1、希拉里相对于他，似乎能力更强（从第一次问名字，以后的约会，以后的竞选，等等），从而让选民进入这样逻辑“你看比尔就是靠她”；2、通过列举希拉里具体做过某些好事（其实最坏的人，也肯定有干过具体的好事）来让选民感到“你看希拉里干过这些好事，我之前甚至不知道”。从而规避了希拉里的硬伤，同时也讲得似乎有血有肉，有根有据，时间，地点，事情都经得起检验。<br><br>为什么说，克林顿的演说比米歇尔的更好呢。米歇尔很煽情，但其实逻辑经不起哪怕140字的反驳。比如发一条推，照片就用川普的四个孩子，然后说“你担心川普会把孩子教坏吗？”，被转发的新闻就是CNN的黑人主播感慨希望自己的孩子也能像川普的一样好。或者伊万卡的演说“请从我们几个孩子来判断我父亲是一个什么样的人”。<br><br>不过巧妇难为无米之炊。比尔克林顿的演说还是经不起正面攻击的（只能在没有人正面攻击的情况下，才能靠潜移默化的思维逻辑把听众带进去）', 'wj89757', '2016-07-29 10:27:09'),
(3, '文明世界是否应干预食人部落吃人的行为?', '介就是一个该不该输出秩序的问题。<br>大英帝国给出的答案是该--殖民体系的核心就是秩序输出，依靠秩序输出扩大影响，形成世界体系。<br>这个体系不会因为食人族的反叛而毁灭--相反，这个体系专治各种食人族。这个体系的致命之处在于无法处理文明世界内部的矛盾--也就是，这个体系无法约束中层国家。一旦一个中层国家变身挑战者，那这个体系就完蛋了。印度人可以因为烧死寡妇被绞死，但是英国不能随便绞死威廉皇帝--不要说绞死，连让威廉皇帝停下中二都不可能。所以从法国过分削弱奥地利，普鲁士趁乱崛起，大英的副手法国输掉普法战争开始，就注定了这个体系的终结--大英可以殖民印度，但是你大英咋去殖民德二？<br>美国给出的答案则是：我搞个了个帮派，这个帮派集中了和我志同道合的人，我们一起建立一个体系，一致对外。这就是美式集体安全世界体系。<br>这个体系下，攻守同盟内部才会安全，各位朋友出去就要死；而且帮派内部要求比大英体系要求高得多，一旦出现中层挑战者，那么因为其他成员在美国的带领下一致维护集体安全体系，所以必然共同剿灭中层挑战者。美国体系是专治中层国家的--因为美国集体安全体系之所以代替英国殖民体系，也就是治了俩中层挑战者--德三和昭和日本。而且美国成功地把德国和日本这两个前中层挑战者吸收成为帮派骨干成员，为后面解决苏联这个有史以来最大最强的中层挑战者加力不少。<br>但是这个体系也有弊端，美国集体安全体系其实不主动输出秩序。食人族如果没吃到美国头上，就很难被美国体系干预。回望美国二战后几次动武，不管是半岛，还是越南，还是中东阿富汗或者后院，哪个不是因为该地食人族已经开始严重威胁美国及其盟友呢？要求美国动武的成本其实非常高。<br>我们现在生活的世界是后者的世界。', 'wj89757', '2016-07-29 10:25:39');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user` varchar(20) NOT NULL COMMENT '用户名',
  `pass` char(40) NOT NULL COMMENT '密码',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `sex` varchar(10) NOT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `email`, `sex`, `birthday`, `date`) VALUES
(1, 'bnbbs', '7c4a8d09ca3762af61e59520943dc26494f8941b', '961214034@qq.com', 'male', '1995-03-09', '2016-07-28 17:14:25'),
(2, 'wj89757', '52fad31d237c59258947d810911ebd3b5001a917', '96121@163.com', 'male', '2016-07-22', '2016-07-28 17:17:58');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
