
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phy_device {TYPE_1__ mdio; } ;


 int device_del (int *) ;
 int mdiobus_unregister_device (TYPE_1__*) ;
 int phy_device_reset (struct phy_device*,int) ;

void phy_device_remove(struct phy_device *phydev)
{
 device_del(&phydev->mdio.dev);


 phy_device_reset(phydev, 1);

 mdiobus_unregister_device(&phydev->mdio);
}
