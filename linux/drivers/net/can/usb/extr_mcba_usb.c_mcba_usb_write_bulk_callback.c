
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; struct mcba_usb_ctx* context; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct mcba_usb_ctx {int ndx; scalar_t__ dlc; scalar_t__ can; TYPE_1__* priv; } ;
struct TYPE_3__ {struct net_device* netdev; } ;


 int CAN_LED_EVENT_TX ;
 int WARN_ON (int) ;
 int can_get_echo_skb (struct net_device*,int ) ;
 int can_led_event (struct net_device*,int ) ;
 int mcba_usb_free_ctx (struct mcba_usb_ctx*) ;
 int netdev_info (struct net_device*,char*,int ) ;
 int netif_device_present (struct net_device*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void mcba_usb_write_bulk_callback(struct urb *urb)
{
 struct mcba_usb_ctx *ctx = urb->context;
 struct net_device *netdev;

 WARN_ON(!ctx);

 netdev = ctx->priv->netdev;


 usb_free_coherent(urb->dev, urb->transfer_buffer_length,
     urb->transfer_buffer, urb->transfer_dma);

 if (ctx->can) {
  if (!netif_device_present(netdev))
   return;

  netdev->stats.tx_packets++;
  netdev->stats.tx_bytes += ctx->dlc;

  can_led_event(netdev, CAN_LED_EVENT_TX);
  can_get_echo_skb(netdev, ctx->ndx);
 }

 if (urb->status)
  netdev_info(netdev, "Tx URB aborted (%d)\n", urb->status);


 mcba_usb_free_ctx(ctx);
}
