
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; int transfer_buffer; struct kvaser_usb_tx_urb_context* context; } ;
struct net_device {int dummy; } ;
struct kvaser_usb_tx_urb_context {struct kvaser_usb_net_priv* priv; } ;
struct kvaser_usb_net_priv {struct net_device* netdev; } ;


 scalar_t__ WARN_ON (int) ;
 int kfree (int ) ;
 int netdev_info (struct net_device*,char*,int ) ;
 int netif_device_present (struct net_device*) ;

__attribute__((used)) static void kvaser_usb_write_bulk_callback(struct urb *urb)
{
 struct kvaser_usb_tx_urb_context *context = urb->context;
 struct kvaser_usb_net_priv *priv;
 struct net_device *netdev;

 if (WARN_ON(!context))
  return;

 priv = context->priv;
 netdev = priv->netdev;

 kfree(urb->transfer_buffer);

 if (!netif_device_present(netdev))
  return;

 if (urb->status)
  netdev_info(netdev, "Tx URB aborted (%d)\n", urb->status);
}
