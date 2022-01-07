
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int ,int ,int,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usb_cypress_writemem(struct usb_device *udev,u16 addr,u8 *data, u8 len)
{
 return usb_control_msg(udev, usb_sndctrlpipe(udev,0),
   0xa0, USB_TYPE_VENDOR, addr, 0x00, data, len, 5000);
}
