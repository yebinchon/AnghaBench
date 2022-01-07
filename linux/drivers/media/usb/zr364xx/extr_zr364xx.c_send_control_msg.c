
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;


 int CTRL_TIMEOUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (unsigned char*) ;
 unsigned char* kmemdup (unsigned char*,int ,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,unsigned char*,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int send_control_msg(struct usb_device *udev, u8 request, u16 value,
       u16 index, unsigned char *cp, u16 size)
{
 int status;

 unsigned char *transfer_buffer = kmemdup(cp, size, GFP_KERNEL);
 if (!transfer_buffer)
  return -ENOMEM;

 status = usb_control_msg(udev,
     usb_sndctrlpipe(udev, 0),
     request,
     USB_DIR_OUT | USB_TYPE_VENDOR |
     USB_RECIP_DEVICE, value, index,
     transfer_buffer, size, CTRL_TIMEOUT);

 kfree(transfer_buffer);
 return status;
}
