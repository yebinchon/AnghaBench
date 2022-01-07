
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static inline int m920x_write(struct usb_device *udev, u8 request,
         u16 value, u16 index)
{
 return usb_control_msg(udev, usb_sndctrlpipe(udev, 0), request,
          USB_TYPE_VENDOR | USB_DIR_OUT, value, index,
          ((void*)0), 0, 2000);
}
