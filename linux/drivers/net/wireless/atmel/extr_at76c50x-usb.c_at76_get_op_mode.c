
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_NOIO ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int at76_get_op_mode(struct usb_device *udev)
{
 int ret;
 u8 saved;
 u8 *op_mode;

 op_mode = kmalloc(1, GFP_NOIO);
 if (!op_mode)
  return -ENOMEM;
 ret = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0), 0x33,
         USB_TYPE_VENDOR | USB_DIR_IN |
         USB_RECIP_INTERFACE, 0x01, 0, op_mode, 1,
         USB_CTRL_GET_TIMEOUT);
 saved = *op_mode;
 kfree(op_mode);

 if (ret < 0)
  return ret;
 else if (ret < 1)
  return -EIO;
 else
  return saved;
}
