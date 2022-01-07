
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_data {int state; int urb; } ;
struct sk_buff {scalar_t__ cb; } ;
struct lan78xx_net {int delta; int flags; int delay; int txq_pend; int stat_monitor; int net; int done; } ;


 int EVENT_RX_HALT ;
 scalar_t__ STAT_UPDATE_TIMER ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ jiffies ;
 int lan78xx_rx_bh (struct lan78xx_net*) ;
 int lan78xx_tx_bh (struct lan78xx_net*) ;
 int mod_timer (int *,scalar_t__) ;
 int netdev_dbg (int ,char*,int) ;
 scalar_t__ netif_device_present (int ) ;
 scalar_t__ netif_running (int ) ;


 int rx_process (struct lan78xx_net*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_empty (int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ timer_pending (int *) ;

 int usb_free_urb (int ) ;

__attribute__((used)) static void lan78xx_bh(unsigned long param)
{
 struct lan78xx_net *dev = (struct lan78xx_net *)param;
 struct sk_buff *skb;
 struct skb_data *entry;

 while ((skb = skb_dequeue(&dev->done))) {
  entry = (struct skb_data *)(skb->cb);
  switch (entry->state) {
  case 129:
   entry->state = 130;
   rx_process(dev, skb);
   continue;
  case 128:
   usb_free_urb(entry->urb);
   dev_kfree_skb(skb);
   continue;
  case 130:
   usb_free_urb(entry->urb);
   dev_kfree_skb(skb);
   continue;
  default:
   netdev_dbg(dev->net, "skb state %d\n", entry->state);
   return;
  }
 }

 if (netif_device_present(dev->net) && netif_running(dev->net)) {

  if (timer_pending(&dev->stat_monitor) && (dev->delta != 1)) {
   dev->delta = 1;
   mod_timer(&dev->stat_monitor,
      jiffies + STAT_UPDATE_TIMER);
  }

  if (!skb_queue_empty(&dev->txq_pend))
   lan78xx_tx_bh(dev);

  if (!timer_pending(&dev->delay) &&
      !test_bit(EVENT_RX_HALT, &dev->flags))
   lan78xx_rx_bh(dev);
 }
}
