
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct r8152 {scalar_t__ tx_qlen; int tx_queue; int tx_tl; int udev; int schedule; int flags; int tx_free; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int SCHEDULE_TASKLET ;
 int SELECTIVE_SUSPEND ;
 int list_empty (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_mark_last_busy (int ) ;

__attribute__((used)) static netdev_tx_t rtl8152_start_xmit(struct sk_buff *skb,
          struct net_device *netdev)
{
 struct r8152 *tp = netdev_priv(netdev);

 skb_tx_timestamp(skb);

 skb_queue_tail(&tp->tx_queue, skb);

 if (!list_empty(&tp->tx_free)) {
  if (test_bit(SELECTIVE_SUSPEND, &tp->flags)) {
   set_bit(SCHEDULE_TASKLET, &tp->flags);
   schedule_delayed_work(&tp->schedule, 0);
  } else {
   usb_mark_last_busy(tp->udev);
   tasklet_schedule(&tp->tx_tl);
  }
 } else if (skb_queue_len(&tp->tx_queue) > tp->tx_qlen) {
  netif_stop_queue(netdev);
 }

 return NETDEV_TX_OK;
}
