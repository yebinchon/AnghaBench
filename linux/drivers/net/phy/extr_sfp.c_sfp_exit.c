
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int sfp_driver ;

__attribute__((used)) static void sfp_exit(void)
{
 platform_driver_unregister(&sfp_driver);
}
