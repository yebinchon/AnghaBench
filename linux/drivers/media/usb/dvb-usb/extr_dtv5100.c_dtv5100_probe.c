
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int index; int value; scalar_t__ request; } ;


 int DTV5100_USB_TIMEOUT ;
 int THIS_MODULE ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int adapter_nr ;
 TYPE_1__* dtv5100_init ;
 int dtv5100_properties ;
 int dvb_usb_device_init (struct usb_interface*,int *,int ,int *,int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int usb_control_msg (struct usb_device*,int ,scalar_t__,int,int ,int ,int *,int ,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int dtv5100_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 int i, ret;
 struct usb_device *udev = interface_to_usbdev(intf);


 for (i = 0; dtv5100_init[i].request; i++) {
  ret = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
          dtv5100_init[i].request,
          USB_TYPE_VENDOR | USB_DIR_OUT,
          dtv5100_init[i].value,
          dtv5100_init[i].index, ((void*)0), 0,
          DTV5100_USB_TIMEOUT);
  if (ret)
   return ret;
 }

 ret = dvb_usb_device_init(intf, &dtv5100_properties,
      THIS_MODULE, ((void*)0), adapter_nr);
 if (ret)
  return ret;

 return 0;
}
