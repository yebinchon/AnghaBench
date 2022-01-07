
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int GFP_KERNEL ;
 int sierra_net_dosync (struct usbnet*) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_probe (struct usb_interface*,struct usb_device_id const*) ;
 int usbnet_status_start (struct usbnet*,int ) ;

__attribute__((used)) static int
sierra_net_probe(struct usb_interface *udev, const struct usb_device_id *prod)
{
 int ret;

 ret = usbnet_probe(udev, prod);
 if (ret == 0) {
  struct usbnet *dev = usb_get_intfdata(udev);

  ret = usbnet_status_start(dev, GFP_KERNEL);
  if (ret == 0) {

   sierra_net_dosync(dev);
  }
 }
 return ret;
}
