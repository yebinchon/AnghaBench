
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_driver {int dummy; } ;


 int phy_driver_unregister (struct phy_driver*) ;

void phy_drivers_unregister(struct phy_driver *drv, int n)
{
 int i;

 for (i = 0; i < n; i++)
  phy_driver_unregister(drv + i);
}
