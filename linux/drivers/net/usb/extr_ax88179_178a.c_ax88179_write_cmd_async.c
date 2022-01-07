
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
 int cpu_to_le16s (int*) ;
 int usbnet_write_cmd_async (struct usbnet*,int ,int,int,int,void*,int) ;

__attribute__((used)) static void ax88179_write_cmd_async(struct usbnet *dev, u8 cmd, u16 value,
        u16 index, u16 size, void *data)
{
 u16 buf;

 if (2 == size) {
  buf = *((u16 *)data);
  cpu_to_le16s(&buf);
  usbnet_write_cmd_async(dev, cmd, USB_DIR_OUT | USB_TYPE_VENDOR |
           USB_RECIP_DEVICE, value, index, &buf,
           size);
 } else {
  usbnet_write_cmd_async(dev, cmd, USB_DIR_OUT | USB_TYPE_VENDOR |
           USB_RECIP_DEVICE, value, index, data,
           size);
 }
}
