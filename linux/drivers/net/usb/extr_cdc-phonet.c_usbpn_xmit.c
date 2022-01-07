
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbpn_dev {scalar_t__ tx_queue; int tx_lock; int tx_pipe; int usb; } ;
struct urb {int transfer_flags; } ;
struct sk_buff {scalar_t__ protocol; int len; int data; } ;
struct TYPE_2__ {int tx_dropped; } ;
struct net_device {scalar_t__ tx_queue_len; TYPE_1__ stats; } ;
typedef int netdev_tx_t ;


 int ETH_P_PHONET ;
 int GFP_ATOMIC ;
 int NETDEV_TX_OK ;
 int URB_ZERO_PACKET ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 struct usbpn_dev* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_complete ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int ,int ,struct sk_buff*) ;
 int usb_free_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static netdev_tx_t usbpn_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct usbpn_dev *pnd = netdev_priv(dev);
 struct urb *req = ((void*)0);
 unsigned long flags;
 int err;

 if (skb->protocol != htons(ETH_P_PHONET))
  goto drop;

 req = usb_alloc_urb(0, GFP_ATOMIC);
 if (!req)
  goto drop;
 usb_fill_bulk_urb(req, pnd->usb, pnd->tx_pipe, skb->data, skb->len,
    tx_complete, skb);
 req->transfer_flags = URB_ZERO_PACKET;
 err = usb_submit_urb(req, GFP_ATOMIC);
 if (err) {
  usb_free_urb(req);
  goto drop;
 }

 spin_lock_irqsave(&pnd->tx_lock, flags);
 pnd->tx_queue++;
 if (pnd->tx_queue >= dev->tx_queue_len)
  netif_stop_queue(dev);
 spin_unlock_irqrestore(&pnd->tx_lock, flags);
 return NETDEV_TX_OK;

drop:
 dev_kfree_skb(skb);
 dev->stats.tx_dropped++;
 return NETDEV_TX_OK;
}
