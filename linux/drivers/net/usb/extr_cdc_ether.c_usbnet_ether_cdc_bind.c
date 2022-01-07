
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;


 int usbnet_cdc_update_filter (struct usbnet*) ;
 int usbnet_generic_cdc_bind (struct usbnet*,struct usb_interface*) ;

int usbnet_ether_cdc_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int rv;

 rv = usbnet_generic_cdc_bind(dev, intf);
 if (rv < 0)
  goto bail_out;






 usbnet_cdc_update_filter(dev);

bail_out:
 return rv;
}
