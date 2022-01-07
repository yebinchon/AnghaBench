
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int DM_WRITE_REG ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usbnet_write_cmd (struct usbnet*,int ,int,int ,int ,int *,int ) ;

__attribute__((used)) static int dm_write_reg(struct usbnet *dev, u8 reg, u8 value)
{
 return usbnet_write_cmd(dev, DM_WRITE_REG,
    USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    value, reg, ((void*)0), 0);
}
