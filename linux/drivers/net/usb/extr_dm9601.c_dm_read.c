
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int DM_READ_REGS ;
 int EINVAL ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usbnet_read_cmd (struct usbnet*,int ,int,int ,int ,void*,int) ;

__attribute__((used)) static int dm_read(struct usbnet *dev, u8 reg, u16 length, void *data)
{
 int err;
 err = usbnet_read_cmd(dev, DM_READ_REGS,
          USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
          0, reg, data, length);
 if(err != length && err >= 0)
  err = -EINVAL;
 return err;
}
