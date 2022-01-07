
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; int transfer_dma; int transfer_buffer; int dev; struct esd_tx_urb_context* context; } ;
struct net_device {int dummy; } ;
struct esd_usb2_net_priv {struct net_device* netdev; } ;
struct esd_usb2_msg {int dummy; } ;
struct esd_tx_urb_context {struct esd_usb2_net_priv* priv; } ;


 int WARN_ON (int) ;
 int netdev_info (struct net_device*,char*,int ) ;
 int netif_device_present (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int usb_free_coherent (int ,size_t,int ,int ) ;

__attribute__((used)) static void esd_usb2_write_bulk_callback(struct urb *urb)
{
 struct esd_tx_urb_context *context = urb->context;
 struct esd_usb2_net_priv *priv;
 struct net_device *netdev;
 size_t size = sizeof(struct esd_usb2_msg);

 WARN_ON(!context);

 priv = context->priv;
 netdev = priv->netdev;


 usb_free_coherent(urb->dev, size,
     urb->transfer_buffer, urb->transfer_dma);

 if (!netif_device_present(netdev))
  return;

 if (urb->status)
  netdev_info(netdev, "Tx URB aborted (%d)\n", urb->status);

 netif_trans_update(netdev);
}
