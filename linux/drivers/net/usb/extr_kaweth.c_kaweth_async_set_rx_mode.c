
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kaweth_device {scalar_t__ packet_filter_bitmap; int net; TYPE_1__* intf; int scratch; int dev; } ;
typedef scalar_t__ __u16 ;
struct TYPE_2__ {int dev; } ;


 int KAWETH_COMMAND_SET_PACKET_FILTER ;
 int KAWETH_CONTROL_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int) ;
 scalar_t__ in_interrupt () ;
 int kaweth_control (struct kaweth_device*,int ,int ,int,scalar_t__,int ,void*,int ,int ) ;
 int netdev_dbg (int ,char*,scalar_t__) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void kaweth_async_set_rx_mode(struct kaweth_device *kaweth)
{
 int result;
 __u16 packet_filter_bitmap = kaweth->packet_filter_bitmap;

 kaweth->packet_filter_bitmap = 0;
 if (packet_filter_bitmap == 0)
  return;

 if (in_interrupt())
  return;

 result = kaweth_control(kaweth,
    usb_sndctrlpipe(kaweth->dev, 0),
    KAWETH_COMMAND_SET_PACKET_FILTER,
    USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
    packet_filter_bitmap,
    0,
    (void *)&kaweth->scratch,
    0,
    KAWETH_CONTROL_TIMEOUT);

 if(result < 0) {
  dev_err(&kaweth->intf->dev, "Failed to set Rx mode: %d\n",
   result);
 }
 else {
  netdev_dbg(kaweth->net, "Set Rx mode to %d\n",
      packet_filter_bitmap);
 }
}
