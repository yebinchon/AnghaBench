
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; int bh; int rxq_pause; int flags; } ;
struct sk_buff {int dummy; } ;


 int EVENT_RX_PAUSED ;
 int clear_bit (int ,int *) ;
 int netif_dbg (struct usbnet*,int ,int ,char*,int) ;
 int rx_status ;
 struct sk_buff* skb_dequeue (int *) ;
 int tasklet_schedule (int *) ;
 int usbnet_skb_return (struct usbnet*,struct sk_buff*) ;

void usbnet_resume_rx(struct usbnet *dev)
{
 struct sk_buff *skb;
 int num = 0;

 clear_bit(EVENT_RX_PAUSED, &dev->flags);

 while ((skb = skb_dequeue(&dev->rxq_pause)) != ((void*)0)) {
  usbnet_skb_return(dev, skb);
  num++;
 }

 tasklet_schedule(&dev->bh);

 netif_dbg(dev, rx_status, dev->net,
    "paused rx queue disabled, %d skbs requeued\n", num);
}
