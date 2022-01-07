
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_driver {int driver; } ;


 int driver_unregister (int *) ;

void scif_unregister_driver(struct scif_driver *driver)
{
 driver_unregister(&driver->driver);
}
