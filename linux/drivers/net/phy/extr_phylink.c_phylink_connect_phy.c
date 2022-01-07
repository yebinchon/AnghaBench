
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ interface; } ;
struct phylink {scalar_t__ link_interface; TYPE_1__ link_config; } ;
struct phy_device {scalar_t__ interface; } ;


 scalar_t__ PHY_INTERFACE_MODE_NA ;
 int __phylink_connect_phy (struct phylink*,struct phy_device*,scalar_t__) ;

int phylink_connect_phy(struct phylink *pl, struct phy_device *phy)
{

 if (pl->link_interface == PHY_INTERFACE_MODE_NA) {
  pl->link_interface = phy->interface;
  pl->link_config.interface = pl->link_interface;
 }

 return __phylink_connect_phy(pl, phy, pl->link_interface);
}
