
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int phydev; } ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ port; scalar_t__ duplex; scalar_t__ autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct bcm_enet_priv {int force_speed_100; int force_duplex_full; scalar_t__ has_phy; } ;


 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ PORT_MII ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 int bcm_enet_adjust_link (struct net_device*) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int phy_ethtool_ksettings_set (int ,struct ethtool_link_ksettings const*) ;

__attribute__((used)) static int bcm_enet_set_link_ksettings(struct net_device *dev,
           const struct ethtool_link_ksettings *cmd)
{
 struct bcm_enet_priv *priv;

 priv = netdev_priv(dev);
 if (priv->has_phy) {
  if (!dev->phydev)
   return -ENODEV;
  return phy_ethtool_ksettings_set(dev->phydev, cmd);
 } else {

  if (cmd->base.autoneg ||
      (cmd->base.speed != SPEED_100 &&
       cmd->base.speed != SPEED_10) ||
      cmd->base.port != PORT_MII)
   return -EINVAL;

  priv->force_speed_100 =
   (cmd->base.speed == SPEED_100) ? 1 : 0;
  priv->force_duplex_full =
   (cmd->base.duplex == DUPLEX_FULL) ? 1 : 0;

  if (netif_running(dev))
   bcm_enet_adjust_link(dev);
  return 0;
 }
}
