
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {int addr; TYPE_1__ dev; } ;
struct phy_device {TYPE_2__ mdio; } ;


 int fixed_phy_del (int ) ;
 int of_node_put (int ) ;
 int phy_device_remove (struct phy_device*) ;

void fixed_phy_unregister(struct phy_device *phy)
{
 phy_device_remove(phy);
 of_node_put(phy->mdio.dev.of_node);
 fixed_phy_del(phy->mdio.addr);
}
