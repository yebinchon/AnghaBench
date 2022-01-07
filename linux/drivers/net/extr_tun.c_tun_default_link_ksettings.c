
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int autoneg; scalar_t__ phy_address; int port; int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int PORT_TP ;
 int SPEED_10 ;
 int advertising ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int supported ;

__attribute__((used)) static void tun_default_link_ksettings(struct net_device *dev,
           struct ethtool_link_ksettings *cmd)
{
 ethtool_link_ksettings_zero_link_mode(cmd, supported);
 ethtool_link_ksettings_zero_link_mode(cmd, advertising);
 cmd->base.speed = SPEED_10;
 cmd->base.duplex = DUPLEX_FULL;
 cmd->base.port = PORT_TP;
 cmd->base.phy_address = 0;
 cmd->base.autoneg = AUTONEG_DISABLE;
}
