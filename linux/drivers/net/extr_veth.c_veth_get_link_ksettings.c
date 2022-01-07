
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int autoneg; int port; int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int PORT_TP ;
 int SPEED_10000 ;

__attribute__((used)) static int veth_get_link_ksettings(struct net_device *dev,
       struct ethtool_link_ksettings *cmd)
{
 cmd->base.speed = SPEED_10000;
 cmd->base.duplex = DUPLEX_FULL;
 cmd->base.port = PORT_TP;
 cmd->base.autoneg = AUTONEG_DISABLE;
 return 0;
}
