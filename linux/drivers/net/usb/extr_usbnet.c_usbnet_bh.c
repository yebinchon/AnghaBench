
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ qlen; } ;
struct TYPE_5__ {int qlen; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct usbnet {int net; TYPE_2__ txq; int bh; TYPE_1__ rxq; int flags; int delay; int wait; TYPE_4__ done; } ;
struct timer_list {int dummy; } ;
struct skb_data {int state; TYPE_3__* urb; } ;
struct sk_buff {scalar_t__ cb; } ;
struct TYPE_7__ {int sg; } ;


 int ENOLINK ;
 int EVENT_RX_HALT ;
 int EVENT_RX_KILL ;
 int EVENT_RX_PAUSED ;
 int GFP_ATOMIC ;
 int RX_QLEN (struct usbnet*) ;
 scalar_t__ TX_QLEN (struct usbnet*) ;
 int clear_bit (int ,int *) ;
 int delay ;
 struct usbnet* dev ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct usbnet* from_timer (int ,struct timer_list*,int ) ;
 int kfree (int ) ;
 int link ;
 int netdev_dbg (int ,char*,int) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_dbg (struct usbnet*,int ,int ,char*,int,int) ;
 scalar_t__ netif_device_present (int ) ;
 scalar_t__ netif_running (int ) ;
 int netif_wake_queue (int ) ;
 int rx_alloc_submit (struct usbnet*,int ) ;


 int rx_process (struct usbnet*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (TYPE_4__*) ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;
 int timer_pending (int *) ;

 int usb_free_urb (TYPE_3__*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void usbnet_bh (struct timer_list *t)
{
 struct usbnet *dev = from_timer(dev, t, delay);
 struct sk_buff *skb;
 struct skb_data *entry;

 while ((skb = skb_dequeue (&dev->done))) {
  entry = (struct skb_data *) skb->cb;
  switch (entry->state) {
  case 129:
   entry->state = 130;
   rx_process (dev, skb);
   continue;
  case 128:
   kfree(entry->urb->sg);

  case 130:
   usb_free_urb (entry->urb);
   dev_kfree_skb (skb);
   continue;
  default:
   netdev_dbg(dev->net, "bogus skb state %d\n", entry->state);
  }
 }


 clear_bit(EVENT_RX_KILL, &dev->flags);




 if (waitqueue_active(&dev->wait)) {
  if (dev->txq.qlen + dev->rxq.qlen + dev->done.qlen == 0)
   wake_up_all(&dev->wait);


 } else if (netif_running (dev->net) &&
     netif_device_present (dev->net) &&
     netif_carrier_ok(dev->net) &&
     !timer_pending(&dev->delay) &&
     !test_bit(EVENT_RX_PAUSED, &dev->flags) &&
     !test_bit(EVENT_RX_HALT, &dev->flags)) {
  int temp = dev->rxq.qlen;

  if (temp < RX_QLEN(dev)) {
   if (rx_alloc_submit(dev, GFP_ATOMIC) == -ENOLINK)
    return;
   if (temp != dev->rxq.qlen)
    netif_dbg(dev, link, dev->net,
       "rxqlen %d --> %d\n",
       temp, dev->rxq.qlen);
   if (dev->rxq.qlen < RX_QLEN(dev))
    tasklet_schedule (&dev->bh);
  }
  if (dev->txq.qlen < TX_QLEN (dev))
   netif_wake_queue (dev->net);
 }
}
