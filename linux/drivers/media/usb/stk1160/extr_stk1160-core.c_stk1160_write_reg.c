
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct stk1160 {int udev; } ;


 int HZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int stk1160_err (char*,int ,int) ;
 int usb_control_msg (int ,int,int,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

int stk1160_write_reg(struct stk1160 *dev, u16 reg, u16 value)
{
 int ret;
 int pipe = usb_sndctrlpipe(dev->udev, 0);

 ret = usb_control_msg(dev->udev, pipe, 0x01,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, reg, ((void*)0), 0, HZ);
 if (ret < 0) {
  stk1160_err("write failed on reg 0x%x (%d)\n",
   reg, ret);
  return ret;
 }

 return 0;
}
