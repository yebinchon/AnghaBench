
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct tifm_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int tifm_bus_type ;

int tifm_register_driver(struct tifm_driver *drv)
{
 drv->driver.bus = &tifm_bus_type;

 return driver_register(&drv->driver);
}
