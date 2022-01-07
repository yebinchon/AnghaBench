
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int net; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int netdev_warn (int ,char*,int ,int ,int) ;
 scalar_t__ unlikely (int) ;
 int usbnet_read_cmd (struct usbnet*,int ,int,int ,int ,void*,int ) ;

__attribute__((used)) static int aqc111_read_cmd(struct usbnet *dev, u8 cmd, u16 value,
      u16 index, u16 size, void *data)
{
 int ret;

 ret = usbnet_read_cmd(dev, cmd, USB_DIR_IN | USB_TYPE_VENDOR |
         USB_RECIP_DEVICE, value, index, data, size);

 if (unlikely(ret < 0))
  netdev_warn(dev->net,
       "Failed to read(0x%x) reg index 0x%04x: %d\n",
       cmd, index, ret);

 return ret;
}
