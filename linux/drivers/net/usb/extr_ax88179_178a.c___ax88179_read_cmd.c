
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int net; } ;


 int BUG_ON (int) ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int netdev_warn (int ,char*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int usbnet_read_cmd (struct usbnet*,int,int,int ,int ,void*,int ) ;
 int usbnet_read_cmd_nopm (struct usbnet*,int,int,int ,int ,void*,int ) ;

__attribute__((used)) static int __ax88179_read_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
         u16 size, void *data, int in_pm)
{
 int ret;
 int (*fn)(struct usbnet *, u8, u8, u16, u16, void *, u16);

 BUG_ON(!dev);

 if (!in_pm)
  fn = usbnet_read_cmd;
 else
  fn = usbnet_read_cmd_nopm;

 ret = fn(dev, cmd, USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, index, data, size);

 if (unlikely(ret < 0))
  netdev_warn(dev->net, "Failed to read reg index 0x%04x: %d\n",
       index, ret);

 return ret;
}
