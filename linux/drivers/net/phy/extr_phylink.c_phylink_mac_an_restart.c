
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interface; scalar_t__ an_enabled; } ;
struct phylink {int config; TYPE_2__* ops; TYPE_1__ link_config; } ;
struct TYPE_4__ {int (* mac_an_restart ) (int ) ;} ;


 scalar_t__ phy_interface_mode_is_8023z (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void phylink_mac_an_restart(struct phylink *pl)
{
 if (pl->link_config.an_enabled &&
     phy_interface_mode_is_8023z(pl->link_config.interface))
  pl->ops->mac_an_restart(pl->config);
}
