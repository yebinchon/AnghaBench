
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct mei_cl_driver {TYPE_1__ driver; } ;


 int driver_unregister (TYPE_1__*) ;
 int pr_debug (char*,int ) ;

void mei_cldev_driver_unregister(struct mei_cl_driver *cldrv)
{
 driver_unregister(&cldrv->driver);

 pr_debug("mei: driver [%s] unregistered\n", cldrv->driver.name);
}
