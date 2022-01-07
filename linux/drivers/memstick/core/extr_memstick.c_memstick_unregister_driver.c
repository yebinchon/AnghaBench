
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_driver {int driver; } ;


 int driver_unregister (int *) ;

void memstick_unregister_driver(struct memstick_driver *drv)
{
 driver_unregister(&drv->driver);
}
