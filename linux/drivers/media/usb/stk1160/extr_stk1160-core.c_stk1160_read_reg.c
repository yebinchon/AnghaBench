
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct stk1160 {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int stk1160_err (char*,int ,int) ;
 int usb_control_msg (int ,int,int,int,int,int ,int *,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

int stk1160_read_reg(struct stk1160 *dev, u16 reg, u8 *value)
{
 int ret;
 int pipe = usb_rcvctrlpipe(dev->udev, 0);
 u8 *buf;

 *value = 0;

 buf = kmalloc(sizeof(u8), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 ret = usb_control_msg(dev->udev, pipe, 0x00,
   USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0x00, reg, buf, sizeof(u8), HZ);
 if (ret < 0) {
  stk1160_err("read failed on reg 0x%x (%d)\n",
   reg, ret);
  kfree(buf);
  return ret;
 }

 *value = *buf;
 kfree(buf);
 return 0;
}
