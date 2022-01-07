
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;
struct bcm_sysport_priv {int dummy; } ;


 int EOPNOTSUPP ;

 int bcm_sysport_rule_get (struct bcm_sysport_priv*,struct ethtool_rxnfc*) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bcm_sysport_get_rxnfc(struct net_device *dev,
     struct ethtool_rxnfc *nfc, u32 *rule_locs)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (nfc->cmd) {
 case 128:
  ret = bcm_sysport_rule_get(priv, nfc);
  break;
 default:
  break;
 }

 return ret;
}
