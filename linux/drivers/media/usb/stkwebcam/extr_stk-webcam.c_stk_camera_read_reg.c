
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct stk_camera {struct usb_device* udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int,int,int,int ,unsigned char*,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

int stk_camera_read_reg(struct stk_camera *dev, u16 index, u8 *value)
{
 struct usb_device *udev = dev->udev;
 unsigned char *buf;
 int ret;

 buf = kmalloc(sizeof(u8), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
   0x00,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0x00,
   index,
   buf,
   sizeof(u8),
   500);
 if (ret >= 0)
  *value = *buf;

 kfree(buf);

 if (ret < 0)
  return ret;
 else
  return 0;
}
