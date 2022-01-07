
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_agg {int list; scalar_t__ skb_num; } ;
struct r8152 {int tx_lock; int tx_free; struct net_device* netdev; int tx_queue; } ;
struct net_device_stats {int tx_dropped; } ;
struct net_device {struct net_device_stats stats; } ;


 int ENODEV ;
 int list_add_tail (int *,int *) ;
 int netif_device_detach (struct net_device*) ;
 int netif_warn (struct r8152*,int ,struct net_device*,char*,int) ;
 struct tx_agg* r8152_get_tx_agg (struct r8152*) ;
 int r8152_tx_agg_fill (struct r8152*,struct tx_agg*) ;
 int rtl_set_unplug (struct r8152*) ;
 scalar_t__ skb_queue_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_err ;

__attribute__((used)) static void tx_bottom(struct r8152 *tp)
{
 int res;

 do {
  struct tx_agg *agg;

  if (skb_queue_empty(&tp->tx_queue))
   break;

  agg = r8152_get_tx_agg(tp);
  if (!agg)
   break;

  res = r8152_tx_agg_fill(tp, agg);
  if (res) {
   struct net_device *netdev = tp->netdev;

   if (res == -ENODEV) {
    rtl_set_unplug(tp);
    netif_device_detach(netdev);
   } else {
    struct net_device_stats *stats = &netdev->stats;
    unsigned long flags;

    netif_warn(tp, tx_err, netdev,
        "failed tx_urb %d\n", res);
    stats->tx_dropped += agg->skb_num;

    spin_lock_irqsave(&tp->tx_lock, flags);
    list_add_tail(&agg->list, &tp->tx_free);
    spin_unlock_irqrestore(&tp->tx_lock, flags);
   }
  }
 } while (res == 0);
}
