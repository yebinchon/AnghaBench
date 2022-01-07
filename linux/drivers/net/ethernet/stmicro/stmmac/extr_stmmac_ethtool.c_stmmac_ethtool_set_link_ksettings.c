
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {int phylink; int lock; TYPE_2__* hw; int ioaddr; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct TYPE_4__ {int pcs; int ps; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_Pause ;
 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 int STMMAC_PCS_RGMII ;
 int STMMAC_PCS_SGMII ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int phylink_ethtool_ksettings_set (int ,struct ethtool_link_ksettings const*) ;
 int stmmac_pcs_ctrl_ane (struct stmmac_priv*,int ,int,int ,int ) ;

__attribute__((used)) static int
stmmac_ethtool_set_link_ksettings(struct net_device *dev,
      const struct ethtool_link_ksettings *cmd)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 if (priv->hw->pcs & STMMAC_PCS_RGMII ||
     priv->hw->pcs & STMMAC_PCS_SGMII) {
  u32 mask = ADVERTISED_Autoneg | ADVERTISED_Pause;


  if (cmd->base.autoneg != AUTONEG_ENABLE)
   return -EINVAL;

  mask &= (ADVERTISED_1000baseT_Half |
   ADVERTISED_1000baseT_Full |
   ADVERTISED_100baseT_Half |
   ADVERTISED_100baseT_Full |
   ADVERTISED_10baseT_Half |
   ADVERTISED_10baseT_Full);

  mutex_lock(&priv->lock);
  stmmac_pcs_ctrl_ane(priv, priv->ioaddr, 1, priv->hw->ps, 0);
  mutex_unlock(&priv->lock);

  return 0;
 }

 return phylink_ethtool_ksettings_set(priv->phylink, cmd);
}
