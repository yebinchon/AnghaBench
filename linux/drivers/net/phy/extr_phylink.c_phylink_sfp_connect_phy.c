
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interface; } ;
struct phylink {TYPE_1__ link_config; } ;
struct phy_device {int dummy; } ;


 int __phylink_connect_phy (void*,struct phy_device*,int ) ;

__attribute__((used)) static int phylink_sfp_connect_phy(void *upstream, struct phy_device *phy)
{
 struct phylink *pl = upstream;

 return __phylink_connect_phy(upstream, phy, pl->link_config.interface);
}
