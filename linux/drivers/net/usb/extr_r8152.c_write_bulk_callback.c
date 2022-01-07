
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int status; struct tx_agg* context; } ;
struct tx_agg {int list; scalar_t__ skb_len; scalar_t__ skb_num; struct r8152* context; } ;
struct r8152 {int tx_tl; int tx_queue; int flags; int intf; int tx_lock; int tx_free; struct net_device* netdev; } ;
struct net_device_stats {int tx_bytes; int tx_packets; int tx_errors; } ;
struct net_device {struct net_device_stats stats; } ;


 int RTL8152_UNPLUG ;
 int WORK_ENABLE ;
 int list_add_tail (int *,int *) ;
 scalar_t__ net_ratelimit () ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_carrier_ok (struct net_device*) ;
 int skb_queue_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_autopm_put_interface_async (int ) ;

__attribute__((used)) static void write_bulk_callback(struct urb *urb)
{
 struct net_device_stats *stats;
 struct net_device *netdev;
 struct tx_agg *agg;
 struct r8152 *tp;
 unsigned long flags;
 int status = urb->status;

 agg = urb->context;
 if (!agg)
  return;

 tp = agg->context;
 if (!tp)
  return;

 netdev = tp->netdev;
 stats = &netdev->stats;
 if (status) {
  if (net_ratelimit())
   netdev_warn(netdev, "Tx status %d\n", status);
  stats->tx_errors += agg->skb_num;
 } else {
  stats->tx_packets += agg->skb_num;
  stats->tx_bytes += agg->skb_len;
 }

 spin_lock_irqsave(&tp->tx_lock, flags);
 list_add_tail(&agg->list, &tp->tx_free);
 spin_unlock_irqrestore(&tp->tx_lock, flags);

 usb_autopm_put_interface_async(tp->intf);

 if (!netif_carrier_ok(netdev))
  return;

 if (!test_bit(WORK_ENABLE, &tp->flags))
  return;

 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return;

 if (!skb_queue_empty(&tp->tx_queue))
  tasklet_schedule(&tp->tx_tl);
}
