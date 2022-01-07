
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct mmc_driver {TYPE_1__ drv; } ;


 int driver_register (TYPE_1__*) ;
 int mmc_bus_type ;

int mmc_register_driver(struct mmc_driver *drv)
{
 drv->drv.bus = &mmc_bus_type;
 return driver_register(&drv->drv);
}
