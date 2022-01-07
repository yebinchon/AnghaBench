
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fimc_is_driver ;
 int fimc_is_register_i2c_driver () ;
 int fimc_is_unregister_i2c_driver () ;
 int platform_driver_register (int *) ;

__attribute__((used)) static int fimc_is_module_init(void)
{
 int ret;

 ret = fimc_is_register_i2c_driver();
 if (ret < 0)
  return ret;

 ret = platform_driver_register(&fimc_is_driver);

 if (ret < 0)
  fimc_is_unregister_i2c_driver();

 return ret;
}
