
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;
struct bcm_sysport_priv {int dummy; } ;


 int EOPNOTSUPP ;


 int bcm_sysport_rule_del (struct bcm_sysport_priv*,int ) ;
 int bcm_sysport_rule_set (struct bcm_sysport_priv*,struct ethtool_rxnfc*) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bcm_sysport_set_rxnfc(struct net_device *dev,
     struct ethtool_rxnfc *nfc)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 switch (nfc->cmd) {
 case 128:
  ret = bcm_sysport_rule_set(priv, nfc);
  break;
 case 129:
  ret = bcm_sysport_rule_del(priv, nfc->fs.location);
  break;
 default:
  break;
 }

 return ret;
}
