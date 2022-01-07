
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sxgbe_priv_data {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;


 int EOPNOTSUPP ;

 struct sxgbe_priv_data* netdev_priv (struct net_device*) ;
 int sxgbe_get_rss_hash_opts (struct sxgbe_priv_data*,struct ethtool_rxnfc*) ;

__attribute__((used)) static int sxgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
      u32 *rule_locs)
{
 struct sxgbe_priv_data *priv = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (cmd->cmd) {
 case 128:
  ret = sxgbe_get_rss_hash_opts(priv, cmd);
  break;
 default:
  break;
 }

 return ret;
}
