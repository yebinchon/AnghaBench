
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int speed; int port; int autoneg; int duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int PORT_NONE ;
 int advertising ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int supported ;

__attribute__((used)) static int fjes_get_link_ksettings(struct net_device *netdev,
       struct ethtool_link_ksettings *ecmd)
{
 ethtool_link_ksettings_zero_link_mode(ecmd, supported);
 ethtool_link_ksettings_zero_link_mode(ecmd, advertising);
 ecmd->base.duplex = DUPLEX_FULL;
 ecmd->base.autoneg = AUTONEG_DISABLE;
 ecmd->base.port = PORT_NONE;
 ecmd->base.speed = 20000;

 return 0;
}
