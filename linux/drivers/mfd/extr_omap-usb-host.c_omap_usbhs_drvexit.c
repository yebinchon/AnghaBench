
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_unregister (int *) ;
 int usbhs_omap_driver ;

__attribute__((used)) static void omap_usbhs_drvexit(void)
{
 platform_driver_unregister(&usbhs_omap_driver);
}
