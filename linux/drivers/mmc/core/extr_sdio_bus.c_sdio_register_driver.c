
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; int name; } ;
struct sdio_driver {TYPE_1__ drv; int name; } ;


 int driver_register (TYPE_1__*) ;
 int sdio_bus_type ;

int sdio_register_driver(struct sdio_driver *drv)
{
 drv->drv.name = drv->name;
 drv->drv.bus = &sdio_bus_type;
 return driver_register(&drv->drv);
}
