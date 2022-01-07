
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {int idProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;


 int THIS_MODULE ;
 int adapter_nr ;
 int dvb_usb_device_init (struct usb_interface*,int *,int ,int *,int ) ;
 int gp8psk_properties ;
 int info (char*,int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int gp8psk_usb_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{
 int ret;
 struct usb_device *udev = interface_to_usbdev(intf);
 ret = dvb_usb_device_init(intf, &gp8psk_properties,
      THIS_MODULE, ((void*)0), adapter_nr);
 if (ret == 0) {
  info("found Genpix USB device pID = %x (hex)",
   le16_to_cpu(udev->descriptor.idProduct));
 }
 return ret;
}
