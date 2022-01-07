
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int bus_unregister (int *) ;
 int driver_register (int *) ;
 int nsim_bus ;
 int nsim_driver ;

int nsim_bus_init(void)
{
 int err;

 err = bus_register(&nsim_bus);
 if (err)
  return err;
 err = driver_register(&nsim_driver);
 if (err)
  goto err_bus_unregister;
 return 0;

err_bus_unregister:
 bus_unregister(&nsim_bus);
 return err;
}
