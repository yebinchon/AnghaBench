
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qede_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; int rule_cnt; } ;


 int DP_ERR (struct qede_dev*,char*) ;
 int EOPNOTSUPP ;





 int QEDE_RFS_MAX_FLTR ;
 int QEDE_RSS_COUNT (struct qede_dev*) ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_get_arfs_filter_count (struct qede_dev*) ;
 int qede_get_cls_rule_all (struct qede_dev*,struct ethtool_rxnfc*,int *) ;
 int qede_get_cls_rule_entry (struct qede_dev*,struct ethtool_rxnfc*) ;
 int qede_get_rss_flags (struct qede_dev*,struct ethtool_rxnfc*) ;

__attribute__((used)) static int qede_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *info,
     u32 *rule_locs)
{
 struct qede_dev *edev = netdev_priv(dev);
 int rc = 0;

 switch (info->cmd) {
 case 128:
  info->data = QEDE_RSS_COUNT(edev);
  break;
 case 129:
  rc = qede_get_rss_flags(edev, info);
  break;
 case 131:
  info->rule_cnt = qede_get_arfs_filter_count(edev);
  info->data = QEDE_RFS_MAX_FLTR;
  break;
 case 130:
  rc = qede_get_cls_rule_entry(edev, info);
  break;
 case 132:
  rc = qede_get_cls_rule_all(edev, info, rule_locs);
  break;
 default:
  DP_ERR(edev, "Command parameters not supported\n");
  rc = -EOPNOTSUPP;
 }

 return rc;
}
