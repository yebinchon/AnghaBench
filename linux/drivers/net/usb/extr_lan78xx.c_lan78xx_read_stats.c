
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan78xx_statstage {int dummy; } ;
struct lan78xx_net {int net; int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int USB_VENDOR_REQUEST_GET_STATS ;
 int kfree (struct lan78xx_statstage*) ;
 struct lan78xx_statstage* kmalloc (int,int ) ;
 int le32_to_cpus (int *) ;
 scalar_t__ likely (int) ;
 int netdev_warn (int ,char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,void*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int lan78xx_read_stats(struct lan78xx_net *dev,
         struct lan78xx_statstage *data)
{
 int ret = 0;
 int i;
 struct lan78xx_statstage *stats;
 u32 *src;
 u32 *dst;

 stats = kmalloc(sizeof(*stats), GFP_KERNEL);
 if (!stats)
  return -ENOMEM;

 ret = usb_control_msg(dev->udev,
         usb_rcvctrlpipe(dev->udev, 0),
         USB_VENDOR_REQUEST_GET_STATS,
         USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
         0,
         0,
         (void *)stats,
         sizeof(*stats),
         USB_CTRL_SET_TIMEOUT);
 if (likely(ret >= 0)) {
  src = (u32 *)stats;
  dst = (u32 *)data;
  for (i = 0; i < sizeof(*stats)/sizeof(u32); i++) {
   le32_to_cpus(&src[i]);
   dst[i] = src[i];
  }
 } else {
  netdev_warn(dev->net,
       "Failed to read stat ret = 0x%x", ret);
 }

 kfree(stats);

 return ret;
}
