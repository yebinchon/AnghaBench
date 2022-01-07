
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int duplex; int speed; scalar_t__ phy_address; int port; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_FIBRE ;
 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_UNKNOWN ;
 int PORT_FIBRE ;
 int SPEED_10000 ;
 int SPEED_UNKNOWN ;
 int SUPPORTED_10000baseT_Full ;
 int SUPPORTED_FIBRE ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static int
bnad_get_link_ksettings(struct net_device *netdev,
   struct ethtool_link_ksettings *cmd)
{
 u32 supported, advertising;

 supported = SUPPORTED_10000baseT_Full;
 advertising = ADVERTISED_10000baseT_Full;
 cmd->base.autoneg = AUTONEG_DISABLE;
 supported |= SUPPORTED_FIBRE;
 advertising |= ADVERTISED_FIBRE;
 cmd->base.port = PORT_FIBRE;
 cmd->base.phy_address = 0;

 if (netif_carrier_ok(netdev)) {
  cmd->base.speed = SPEED_10000;
  cmd->base.duplex = DUPLEX_FULL;
 } else {
  cmd->base.speed = SPEED_UNKNOWN;
  cmd->base.duplex = DUPLEX_UNKNOWN;
 }

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
