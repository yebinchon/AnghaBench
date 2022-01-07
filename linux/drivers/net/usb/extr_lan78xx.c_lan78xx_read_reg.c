
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan78xx_net {int net; int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int USB_VENDOR_REQUEST_READ_REGISTER ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int le32_to_cpus (int *) ;
 scalar_t__ likely (int) ;
 int netdev_warn (int ,char*,int ,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int lan78xx_read_reg(struct lan78xx_net *dev, u32 index, u32 *data)
{
 u32 *buf = kmalloc(sizeof(u32), GFP_KERNEL);
 int ret;

 if (!buf)
  return -ENOMEM;

 ret = usb_control_msg(dev->udev, usb_rcvctrlpipe(dev->udev, 0),
         USB_VENDOR_REQUEST_READ_REGISTER,
         USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         0, index, buf, 4, USB_CTRL_GET_TIMEOUT);
 if (likely(ret >= 0)) {
  le32_to_cpus(buf);
  *data = *buf;
 } else {
  netdev_warn(dev->net,
       "Failed to read register index 0x%08x. ret = %d",
       index, ret);
 }

 kfree(buf);

 return ret;
}
