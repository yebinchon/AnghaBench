
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_register (int *) ;
 int xgbe_driver ;

int xgbe_platform_init(void)
{
 return platform_driver_register(&xgbe_driver);
}
