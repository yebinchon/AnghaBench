
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int sxgbe_platform_driver ;

void sxgbe_unregister_platform(void)
{
 platform_driver_unregister(&sxgbe_platform_driver);
}
