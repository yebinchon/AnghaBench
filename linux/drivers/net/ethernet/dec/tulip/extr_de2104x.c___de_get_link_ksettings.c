
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int speed; int autoneg; int duplex; int port; scalar_t__ phy_address; } ;
struct TYPE_3__ {int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;
struct de_private {int media_type; scalar_t__ media_lock; int media_advertise; int media_supported; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int FullDuplex ;
 int MacMode ;
 int PORT_AUI ;
 int PORT_BNC ;
 int PORT_TP ;
 int dr32 (int ) ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;

__attribute__((used)) static void __de_get_link_ksettings(struct de_private *de,
        struct ethtool_link_ksettings *cmd)
{
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      de->media_supported);
 cmd->base.phy_address = 0;
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      de->media_advertise);

 switch (de->media_type) {
 case 129:
  cmd->base.port = PORT_AUI;
  break;
 case 128:
  cmd->base.port = PORT_BNC;
  break;
 default:
  cmd->base.port = PORT_TP;
  break;
 }

 cmd->base.speed = 10;

 if (dr32(MacMode) & FullDuplex)
  cmd->base.duplex = DUPLEX_FULL;
 else
  cmd->base.duplex = DUPLEX_HALF;

 if (de->media_lock)
  cmd->base.autoneg = AUTONEG_DISABLE;
 else
  cmd->base.autoneg = AUTONEG_ENABLE;


}
