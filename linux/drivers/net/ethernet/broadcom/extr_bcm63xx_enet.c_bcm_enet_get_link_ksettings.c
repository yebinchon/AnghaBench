
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int phydev; } ;
struct TYPE_4__ {int port; int duplex; int speed; scalar_t__ autoneg; } ;
struct TYPE_3__ {int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;
struct bcm_enet_priv {scalar_t__ force_duplex_full; scalar_t__ force_speed_100; scalar_t__ has_phy; } ;


 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int ENODEV ;
 int PORT_MII ;
 int SPEED_10 ;
 int SPEED_100 ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_ksettings_get (int ,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int bcm_enet_get_link_ksettings(struct net_device *dev,
           struct ethtool_link_ksettings *cmd)
{
 struct bcm_enet_priv *priv;
 u32 supported, advertising;

 priv = netdev_priv(dev);

 if (priv->has_phy) {
  if (!dev->phydev)
   return -ENODEV;

  phy_ethtool_ksettings_get(dev->phydev, cmd);

  return 0;
 } else {
  cmd->base.autoneg = 0;
  cmd->base.speed = (priv->force_speed_100) ?
   SPEED_100 : SPEED_10;
  cmd->base.duplex = (priv->force_duplex_full) ?
   DUPLEX_FULL : DUPLEX_HALF;
  supported = ADVERTISED_10baseT_Half |
   ADVERTISED_10baseT_Full |
   ADVERTISED_100baseT_Half |
   ADVERTISED_100baseT_Full;
  advertising = 0;
  ethtool_convert_legacy_u32_to_link_mode(
   cmd->link_modes.supported, supported);
  ethtool_convert_legacy_u32_to_link_mode(
   cmd->link_modes.advertising, advertising);
  cmd->base.port = PORT_MII;
 }
 return 0;
}
