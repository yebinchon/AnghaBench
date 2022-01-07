
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usbnet_write_cmd (struct usbnet*,int ,int,int ,int ,int *,int ) ;

__attribute__((used)) static void
nc_vendor_write(struct usbnet *dev, u8 req, u8 regnum, u16 value)
{
 usbnet_write_cmd(dev, req,
    USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    value, regnum, ((void*)0), 0);
}
