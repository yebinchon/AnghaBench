
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvpp2_port {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;



 int mvpp22_rss_is_supported () ;
 int mvpp2_ethtool_cls_rule_del (struct mvpp2_port*,struct ethtool_rxnfc*) ;
 int mvpp2_ethtool_cls_rule_ins (struct mvpp2_port*,struct ethtool_rxnfc*) ;
 int mvpp2_ethtool_rxfh_set (struct mvpp2_port*,struct ethtool_rxnfc*) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvpp2_ethtool_set_rxnfc(struct net_device *dev,
       struct ethtool_rxnfc *info)
{
 struct mvpp2_port *port = netdev_priv(dev);
 int ret = 0;

 if (!mvpp22_rss_is_supported())
  return -EOPNOTSUPP;

 switch (info->cmd) {
 case 128:
  ret = mvpp2_ethtool_rxfh_set(port, info);
  break;
 case 129:
  ret = mvpp2_ethtool_cls_rule_ins(port, info);
  break;
 case 130:
  ret = mvpp2_ethtool_cls_rule_del(port, info);
  break;
 default:
  return -EOPNOTSUPP;
 }
 return ret;
}
