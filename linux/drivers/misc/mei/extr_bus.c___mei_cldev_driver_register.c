
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {int name; int * bus; struct module* owner; } ;
struct mei_cl_driver {TYPE_1__ driver; int name; } ;


 int driver_register (TYPE_1__*) ;
 int mei_cl_bus_type ;
 int pr_debug (char*,int ) ;

int __mei_cldev_driver_register(struct mei_cl_driver *cldrv,
    struct module *owner)
{
 int err;

 cldrv->driver.name = cldrv->name;
 cldrv->driver.owner = owner;
 cldrv->driver.bus = &mei_cl_bus_type;

 err = driver_register(&cldrv->driver);
 if (err)
  return err;

 pr_debug("mei: driver [%s] registered\n", cldrv->driver.name);

 return 0;
}
