
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int intf; } ;


 int ENODEV ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int __aqc111_write_cmd (struct usbnet*,int ,int,int ,int ,int ,void*) ;
 scalar_t__ usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int aqc111_write_cmd(struct usbnet *dev, u8 cmd, u16 value,
       u16 index, u16 size, void *data)
{
 int ret;

 if (usb_autopm_get_interface(dev->intf) < 0)
  return -ENODEV;

 ret = __aqc111_write_cmd(dev, cmd, USB_DIR_OUT | USB_TYPE_VENDOR |
     USB_RECIP_DEVICE, value, index, size, data);

 usb_autopm_put_interface(dev->intf);

 return ret;
}
