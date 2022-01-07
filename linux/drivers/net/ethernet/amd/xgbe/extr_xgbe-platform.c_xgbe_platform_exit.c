
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int xgbe_driver ;

void xgbe_platform_exit(void)
{
 platform_driver_unregister(&xgbe_driver);
}
