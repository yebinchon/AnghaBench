
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
 int __aqc111_write_cmd (struct usbnet*,int ,int,int ,int ,int ,void*) ;

__attribute__((used)) static int aqc111_write_cmd_nopm(struct usbnet *dev, u8 cmd, u16 value,
     u16 index, u16 size, void *data)
{
 int ret;

 ret = __aqc111_write_cmd(dev, cmd, USB_DIR_OUT | USB_TYPE_VENDOR |
     USB_RECIP_DEVICE, value, index, size, data);

 return ret;
}
