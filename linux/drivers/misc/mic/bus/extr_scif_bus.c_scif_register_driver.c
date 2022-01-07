
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct scif_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int scif_bus ;

int scif_register_driver(struct scif_driver *driver)
{
 driver->driver.bus = &scif_bus;
 return driver_register(&driver->driver);
}
