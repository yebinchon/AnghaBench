
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct lan78xx_net {scalar_t__ rx_qlen; scalar_t__ tx_qlen; int net; int txq; int bh; int rxq; } ;


 int ENOLINK ;
 int GFP_ATOMIC ;
 int netif_wake_queue (int ) ;
 int rx_submit (struct lan78xx_net*,struct urb*,int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int tasklet_schedule (int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static void lan78xx_rx_bh(struct lan78xx_net *dev)
{
 struct urb *urb;
 int i;

 if (skb_queue_len(&dev->rxq) < dev->rx_qlen) {
  for (i = 0; i < 10; i++) {
   if (skb_queue_len(&dev->rxq) >= dev->rx_qlen)
    break;
   urb = usb_alloc_urb(0, GFP_ATOMIC);
   if (urb)
    if (rx_submit(dev, urb, GFP_ATOMIC) == -ENOLINK)
     return;
  }

  if (skb_queue_len(&dev->rxq) < dev->rx_qlen)
   tasklet_schedule(&dev->bh);
 }
 if (skb_queue_len(&dev->txq) < dev->tx_qlen)
  netif_wake_queue(dev->net);
}
