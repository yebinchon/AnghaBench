
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fimc_is_i2c_driver ;
 int platform_driver_register (int *) ;

int fimc_is_register_i2c_driver(void)
{
 return platform_driver_register(&fimc_is_i2c_driver);
}
