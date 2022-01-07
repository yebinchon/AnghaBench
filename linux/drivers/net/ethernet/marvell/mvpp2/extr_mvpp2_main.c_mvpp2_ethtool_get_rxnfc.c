
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mvpp2_port {int * rfs_rules; int n_rfs_rules; int nrxqs; } ;
struct ethtool_rxnfc {int cmd; int rule_cnt; int data; } ;


 int ENOTSUPP ;
 int EOPNOTSUPP ;





 int MVPP2_N_RFS_ENTRIES_PER_FLOW ;
 int mvpp22_rss_is_supported () ;
 int mvpp2_ethtool_cls_rule_get (struct mvpp2_port*,struct ethtool_rxnfc*) ;
 int mvpp2_ethtool_rxfh_get (struct mvpp2_port*,struct ethtool_rxnfc*) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvpp2_ethtool_get_rxnfc(struct net_device *dev,
       struct ethtool_rxnfc *info, u32 *rules)
{
 struct mvpp2_port *port = netdev_priv(dev);
 int ret = 0, i, loc = 0;

 if (!mvpp22_rss_is_supported())
  return -EOPNOTSUPP;

 switch (info->cmd) {
 case 129:
  ret = mvpp2_ethtool_rxfh_get(port, info);
  break;
 case 128:
  info->data = port->nrxqs;
  break;
 case 131:
  info->rule_cnt = port->n_rfs_rules;
  break;
 case 130:
  ret = mvpp2_ethtool_cls_rule_get(port, info);
  break;
 case 132:
  for (i = 0; i < MVPP2_N_RFS_ENTRIES_PER_FLOW; i++) {
   if (port->rfs_rules[i])
    rules[loc++] = i;
  }
  break;
 default:
  return -ENOTSUPP;
 }

 return ret;
}
