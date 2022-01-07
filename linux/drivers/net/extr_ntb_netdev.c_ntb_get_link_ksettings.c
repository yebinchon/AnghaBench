
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int autoneg; scalar_t__ phy_address; int port; int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int AUTONEG_ENABLE ;
 int Backplane ;
 int DUPLEX_FULL ;
 int PORT_OTHER ;
 int SPEED_UNKNOWN ;
 int advertising ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int supported ;

__attribute__((used)) static int ntb_get_link_ksettings(struct net_device *dev,
      struct ethtool_link_ksettings *cmd)
{
 ethtool_link_ksettings_zero_link_mode(cmd, supported);
 ethtool_link_ksettings_add_link_mode(cmd, supported, Backplane);
 ethtool_link_ksettings_zero_link_mode(cmd, advertising);
 ethtool_link_ksettings_add_link_mode(cmd, advertising, Backplane);

 cmd->base.speed = SPEED_UNKNOWN;
 cmd->base.duplex = DUPLEX_FULL;
 cmd->base.port = PORT_OTHER;
 cmd->base.phy_address = 0;
 cmd->base.autoneg = AUTONEG_ENABLE;

 return 0;
}
