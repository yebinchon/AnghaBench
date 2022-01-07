
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;
struct phy_driver {TYPE_1__ mdiodrv; } ;


 int driver_unregister (int *) ;

void phy_driver_unregister(struct phy_driver *drv)
{
 driver_unregister(&drv->mdiodrv.driver);
}
