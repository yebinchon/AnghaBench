
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fm10k_intfc {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;

 int fm10k_set_rss_hash_opt (struct fm10k_intfc*,struct ethtool_rxnfc*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fm10k_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  ret = fm10k_set_rss_hash_opt(interface, cmd);
  break;
 default:
  break;
 }

 return ret;
}
