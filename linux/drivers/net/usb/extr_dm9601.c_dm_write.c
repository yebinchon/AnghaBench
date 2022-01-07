
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int DM_WRITE_REGS ;
 int EINVAL ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usbnet_write_cmd (struct usbnet*,int ,int,int ,int ,void*,int) ;

__attribute__((used)) static int dm_write(struct usbnet *dev, u8 reg, u16 length, void *data)
{
 int err;
 err = usbnet_write_cmd(dev, DM_WRITE_REGS,
    USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    0, reg, data, length);

 if (err >= 0 && err < length)
  err = -EINVAL;
 return err;
}
