
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;


 int cdc_mbim_manage_power (struct usbnet*,int) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int cdc_mbim_wdm_manage_power(struct usb_interface *intf, int status)
{
 struct usbnet *dev = usb_get_intfdata(intf);


 if (!dev)
  return 0;

 return cdc_mbim_manage_power(dev, status);
}
