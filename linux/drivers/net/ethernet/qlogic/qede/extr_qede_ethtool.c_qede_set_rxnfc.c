
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;


 int DP_INFO (struct qede_dev*,char*) ;
 int EOPNOTSUPP ;



 struct qede_dev* netdev_priv (struct net_device*) ;
 int qede_add_cls_rule (struct qede_dev*,struct ethtool_rxnfc*) ;
 int qede_delete_flow_filter (struct qede_dev*,int ) ;
 int qede_set_rss_flags (struct qede_dev*,struct ethtool_rxnfc*) ;

__attribute__((used)) static int qede_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *info)
{
 struct qede_dev *edev = netdev_priv(dev);
 int rc;

 switch (info->cmd) {
 case 128:
  rc = qede_set_rss_flags(edev, info);
  break;
 case 129:
  rc = qede_add_cls_rule(edev, info);
  break;
 case 130:
  rc = qede_delete_flow_filter(edev, info->fs.location);
  break;
 default:
  DP_INFO(edev, "Command parameters not supported\n");
  rc = -EOPNOTSUPP;
 }

 return rc;
}
