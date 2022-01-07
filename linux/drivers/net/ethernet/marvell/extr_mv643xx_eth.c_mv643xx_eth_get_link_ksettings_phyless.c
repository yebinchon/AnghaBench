
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mv643xx_eth_private {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int speed; int autoneg; scalar_t__ phy_address; int port; int duplex; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int ADVERTISED_MII ;
 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int FULL_DUPLEX ;
 int PORT_MII ;



 int PORT_SPEED_MASK ;
 int PORT_STATUS ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SUPPORTED_MII ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 int rdlp (struct mv643xx_eth_private*,int ) ;

__attribute__((used)) static int
mv643xx_eth_get_link_ksettings_phyless(struct mv643xx_eth_private *mp,
           struct ethtool_link_ksettings *cmd)
{
 u32 port_status;
 u32 supported, advertising;

 port_status = rdlp(mp, PORT_STATUS);

 supported = SUPPORTED_MII;
 advertising = ADVERTISED_MII;
 switch (port_status & PORT_SPEED_MASK) {
 case 130:
  cmd->base.speed = SPEED_10;
  break;
 case 129:
  cmd->base.speed = SPEED_100;
  break;
 case 128:
  cmd->base.speed = SPEED_1000;
  break;
 default:
  cmd->base.speed = -1;
  break;
 }
 cmd->base.duplex = (port_status & FULL_DUPLEX) ?
  DUPLEX_FULL : DUPLEX_HALF;
 cmd->base.port = PORT_MII;
 cmd->base.phy_address = 0;
 cmd->base.autoneg = AUTONEG_DISABLE;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
