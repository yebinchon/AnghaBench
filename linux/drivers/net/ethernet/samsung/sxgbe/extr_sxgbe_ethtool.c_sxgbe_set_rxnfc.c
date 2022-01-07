
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_priv_data {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;

 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int sxgbe_set_rss_hash_opt (struct sxgbe_priv_data*,struct ethtool_rxnfc*) ;

__attribute__((used)) static int sxgbe_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  ret = sxgbe_set_rss_hash_opt(priv, cmd);
  break;
 default:
  break;
 }

 return ret;
}
