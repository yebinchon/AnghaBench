
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int DUPLEX_UNKNOWN ;
 int SPEED_UNKNOWN ;
 int ice_phy_type_to_ethtool (struct net_device*,struct ethtool_link_ksettings*) ;

__attribute__((used)) static void
ice_get_settings_link_down(struct ethtool_link_ksettings *ks,
      struct net_device *netdev)
{



 ice_phy_type_to_ethtool(netdev, ks);


 ks->base.speed = SPEED_UNKNOWN;
 ks->base.duplex = DUPLEX_UNKNOWN;
}
