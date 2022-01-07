
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_8dev_tx_urb_context {int echo_index; scalar_t__ dlc; struct usb_8dev_priv* priv; } ;
struct usb_8dev_priv {int active_tx_urbs; struct net_device* netdev; } ;
struct urb {int status; int transfer_dma; int transfer_buffer; int transfer_buffer_length; int dev; struct usb_8dev_tx_urb_context* context; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;


 int BUG_ON (int) ;
 int CAN_LED_EVENT_TX ;
 int MAX_TX_URBS ;
 int atomic_dec (int *) ;
 int can_get_echo_skb (struct net_device*,int ) ;
 int can_led_event (struct net_device*,int ) ;
 int netdev_info (struct net_device*,char*,int ) ;
 int netif_device_present (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void usb_8dev_write_bulk_callback(struct urb *urb)
{
 struct usb_8dev_tx_urb_context *context = urb->context;
 struct usb_8dev_priv *priv;
 struct net_device *netdev;

 BUG_ON(!context);

 priv = context->priv;
 netdev = priv->netdev;


 usb_free_coherent(urb->dev, urb->transfer_buffer_length,
     urb->transfer_buffer, urb->transfer_dma);

 atomic_dec(&priv->active_tx_urbs);

 if (!netif_device_present(netdev))
  return;

 if (urb->status)
  netdev_info(netdev, "Tx URB aborted (%d)\n",
    urb->status);

 netdev->stats.tx_packets++;
 netdev->stats.tx_bytes += context->dlc;

 can_get_echo_skb(netdev, context->echo_index);

 can_led_event(netdev, CAN_LED_EVENT_TX);


 context->echo_index = MAX_TX_URBS;

 netif_wake_queue(netdev);
}
