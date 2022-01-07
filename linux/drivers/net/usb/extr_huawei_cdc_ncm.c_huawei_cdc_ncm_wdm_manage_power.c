
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;


 int huawei_cdc_ncm_manage_power (struct usbnet*,int) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int huawei_cdc_ncm_wdm_manage_power(struct usb_interface *intf,
        int status)
{
 struct usbnet *usbnet_dev = usb_get_intfdata(intf);


 if (!usbnet_dev)
  return 0;

 return huawei_cdc_ncm_manage_power(usbnet_dev, status);
}
