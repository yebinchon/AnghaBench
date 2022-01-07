
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct net_device {int dummy; } ;
struct kvaser_usb_net_priv {int tx_submitted; struct net_device* netdev; struct kvaser_usb* dev; } ;
struct kvaser_usb {TYPE_1__* bulk_out; int udev; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int kvaser_usb_send_cmd_callback ;
 int netdev_err (struct net_device*,char*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,void*,int,int ,struct net_device*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

int kvaser_usb_send_cmd_async(struct kvaser_usb_net_priv *priv, void *cmd,
         int len)
{
 struct kvaser_usb *dev = priv->dev;
 struct net_device *netdev = priv->netdev;
 struct urb *urb;
 int err;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb)
  return -ENOMEM;

 usb_fill_bulk_urb(urb, dev->udev,
     usb_sndbulkpipe(dev->udev,
       dev->bulk_out->bEndpointAddress),
     cmd, len, kvaser_usb_send_cmd_callback, netdev);
 usb_anchor_urb(urb, &priv->tx_submitted);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (err) {
  netdev_err(netdev, "Error transmitting URB\n");
  usb_unanchor_urb(urb);
 }
 usb_free_urb(urb);

 return 0;
}
