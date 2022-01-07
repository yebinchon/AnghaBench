
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fimc_is_i2c_driver ;
 int platform_driver_unregister (int *) ;

void fimc_is_unregister_i2c_driver(void)
{
 platform_driver_unregister(&fimc_is_i2c_driver);
}
