
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fimc_is_driver ;
 int fimc_is_unregister_i2c_driver () ;
 int platform_driver_unregister (int *) ;

__attribute__((used)) static void fimc_is_module_exit(void)
{
 fimc_is_unregister_i2c_driver();
 platform_driver_unregister(&fimc_is_driver);
}
