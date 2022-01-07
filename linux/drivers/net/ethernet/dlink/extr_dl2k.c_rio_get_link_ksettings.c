
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct netdev_private {int phy_addr; scalar_t__ an_enable; scalar_t__ full_duplex; int speed; scalar_t__ link_status; scalar_t__ phy_media; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int phy_address; int autoneg; int duplex; int speed; int port; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_MII ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 int PORT_FIBRE ;
 int PORT_MII ;
 int SPEED_UNKNOWN ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_MII ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int rio_get_link_ksettings(struct net_device *dev,
      struct ethtool_link_ksettings *cmd)
{
 struct netdev_private *np = netdev_priv(dev);
 u32 supported, advertising;

 if (np->phy_media) {

  supported = SUPPORTED_Autoneg | SUPPORTED_FIBRE;
  advertising = ADVERTISED_Autoneg | ADVERTISED_FIBRE;
  cmd->base.port = PORT_FIBRE;
 } else {

  supported = SUPPORTED_10baseT_Half |
   SUPPORTED_10baseT_Full | SUPPORTED_100baseT_Half
   | SUPPORTED_100baseT_Full | SUPPORTED_1000baseT_Full |
   SUPPORTED_Autoneg | SUPPORTED_MII;
  advertising = ADVERTISED_10baseT_Half |
   ADVERTISED_10baseT_Full | ADVERTISED_100baseT_Half |
   ADVERTISED_100baseT_Full | ADVERTISED_1000baseT_Full |
   ADVERTISED_Autoneg | ADVERTISED_MII;
  cmd->base.port = PORT_MII;
 }
 if (np->link_status) {
  cmd->base.speed = np->speed;
  cmd->base.duplex = np->full_duplex ? DUPLEX_FULL : DUPLEX_HALF;
 } else {
  cmd->base.speed = SPEED_UNKNOWN;
  cmd->base.duplex = DUPLEX_UNKNOWN;
 }
 if (np->an_enable)
  cmd->base.autoneg = AUTONEG_ENABLE;
 else
  cmd->base.autoneg = AUTONEG_DISABLE;

 cmd->base.phy_address = np->phy_addr;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
