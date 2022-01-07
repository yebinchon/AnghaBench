
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_driver {int dummy; } ;
struct TYPE_4__ {struct device_driver driver; } ;
struct TYPE_5__ {TYPE_1__ drvwrap; } ;


 int USB ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_usb_reset_device ;
 TYPE_2__ brcmf_usbdrvr ;
 int driver_for_each_device (struct device_driver*,int *,int *,int ) ;
 int usb_deregister (TYPE_2__*) ;

void brcmf_usb_exit(void)
{
 struct device_driver *drv = &brcmf_usbdrvr.drvwrap.driver;
 int ret;

 brcmf_dbg(USB, "Enter\n");
 ret = driver_for_each_device(drv, ((void*)0), ((void*)0),
         brcmf_usb_reset_device);
 usb_deregister(&brcmf_usbdrvr);
}
