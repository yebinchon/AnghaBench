
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int frame_errors; int net; } ;


 int REG_USBCTL ;
 int REQUEST_REGISTER ;
 int USBCTL_FLUSH_OTHER ;
 int USBCTL_FLUSH_THIS ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int netif_dbg (struct usbnet*,int ,int ,char*) ;
 int rx_err ;
 scalar_t__ usbnet_write_cmd_async (struct usbnet*,int ,int,int,int ,int *,int ) ;

__attribute__((used)) static void nc_ensure_sync(struct usbnet *dev)
{
 if (++dev->frame_errors <= 5)
  return;

 if (usbnet_write_cmd_async(dev, REQUEST_REGISTER,
     USB_DIR_OUT | USB_TYPE_VENDOR |
     USB_RECIP_DEVICE,
     USBCTL_FLUSH_THIS |
     USBCTL_FLUSH_OTHER,
     REG_USBCTL, ((void*)0), 0))
  return;

 netif_dbg(dev, rx_err, dev->net,
    "flush net1080; too many framing errors\n");
 dev->frame_errors = 0;
}
