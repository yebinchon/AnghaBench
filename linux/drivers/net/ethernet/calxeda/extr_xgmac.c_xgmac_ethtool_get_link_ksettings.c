
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int speed; int duplex; scalar_t__ autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int DUPLEX_FULL ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;

__attribute__((used)) static int xgmac_ethtool_get_link_ksettings(struct net_device *dev,
         struct ethtool_link_ksettings *cmd)
{
 cmd->base.autoneg = 0;
 cmd->base.duplex = DUPLEX_FULL;
 cmd->base.speed = 10000;
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported, 0);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising, 0);
 return 0;
}
