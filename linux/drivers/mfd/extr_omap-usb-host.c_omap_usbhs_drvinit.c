
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_driver_register (int *) ;
 int usbhs_omap_driver ;

__attribute__((used)) static int omap_usbhs_drvinit(void)
{
 return platform_driver_register(&usbhs_omap_driver);
}
