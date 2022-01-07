
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int autoneg; scalar_t__ phy_address; int port; int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int PORT_FIBRE ;
 int SPEED_1000 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;

__attribute__((used)) static int netdev_get_link_ksettings(struct net_device *dev,
         struct ethtool_link_ksettings *cmd)
{
 u32 supported, advertising;

 supported = (SUPPORTED_1000baseT_Full | SUPPORTED_Autoneg |
    SUPPORTED_FIBRE);
 advertising = (ADVERTISED_1000baseT_Full | ADVERTISED_Autoneg |
    ADVERTISED_FIBRE);
 cmd->base.speed = SPEED_1000;
 cmd->base.duplex = DUPLEX_FULL;
 cmd->base.port = PORT_FIBRE;
 cmd->base.phy_address = 0;
 cmd->base.autoneg = AUTONEG_ENABLE;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
