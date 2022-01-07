
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device {int dummy; } ;


 int CTRL_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int kinect_write(struct usb_device *udev, uint8_t *data,
   uint16_t wLength)
{
 return usb_control_msg(udev,
         usb_sndctrlpipe(udev, 0),
         0x00,
         USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         0, 0, data, wLength, CTRL_TIMEOUT);
}
