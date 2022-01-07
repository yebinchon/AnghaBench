
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int at76_remap(struct usb_device *udev)
{
 int ret;
 ret = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), 0x0a,
         USB_TYPE_VENDOR | USB_DIR_OUT |
         USB_RECIP_INTERFACE, 0, 0, ((void*)0), 0,
         USB_CTRL_GET_TIMEOUT);
 if (ret < 0)
  return ret;
 return 0;
}
