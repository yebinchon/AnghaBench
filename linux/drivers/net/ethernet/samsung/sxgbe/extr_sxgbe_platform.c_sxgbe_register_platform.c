
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_register (int *) ;
 int pr_err (char*) ;
 int sxgbe_platform_driver ;

int sxgbe_register_platform(void)
{
 int err;

 err = platform_driver_register(&sxgbe_platform_driver);
 if (err)
  pr_err("failed to register the platform driver\n");

 return err;
}
