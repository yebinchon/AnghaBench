
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {int phylink; int ioaddr; TYPE_1__* hw; } ;
struct rgmii_adv {int pause; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int autoneg; } ;
struct TYPE_2__ {scalar_t__ pcs; } ;


 int EOPNOTSUPP ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int phylink_ethtool_set_pauseparam (int ,struct ethtool_pauseparam*) ;
 int stmmac_pcs_get_adv_lp (struct stmmac_priv*,int ,struct rgmii_adv*) ;

__attribute__((used)) static int
stmmac_set_pauseparam(struct net_device *netdev,
        struct ethtool_pauseparam *pause)
{
 struct stmmac_priv *priv = netdev_priv(netdev);
 struct rgmii_adv adv_lp;

 if (priv->hw->pcs && !stmmac_pcs_get_adv_lp(priv, priv->ioaddr, &adv_lp)) {
  pause->autoneg = 1;
  if (!adv_lp.pause)
   return -EOPNOTSUPP;
  return 0;
 } else {
  return phylink_ethtool_set_pauseparam(priv->phylink, pause);
 }
}
