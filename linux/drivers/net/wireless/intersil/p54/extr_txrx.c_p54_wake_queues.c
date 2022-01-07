
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p54_common {scalar_t__ mode; int tx_stats_lock; TYPE_2__* hw; TYPE_1__* tx_stats; } ;
struct TYPE_4__ {unsigned int queues; } ;
struct TYPE_3__ {scalar_t__ len; scalar_t__ limit; } ;


 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 unsigned int P54_QUEUE_DATA ;
 int ieee80211_wake_queue (TYPE_2__*,unsigned int) ;
 int p54_tx_pending (struct p54_common*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void p54_wake_queues(struct p54_common *priv)
{
 unsigned long flags;
 unsigned int i;

 if (unlikely(priv->mode == NL80211_IFTYPE_UNSPECIFIED))
  return ;

 p54_tx_pending(priv);

 spin_lock_irqsave(&priv->tx_stats_lock, flags);
 for (i = 0; i < priv->hw->queues; i++) {
  if (priv->tx_stats[i + P54_QUEUE_DATA].len <
      priv->tx_stats[i + P54_QUEUE_DATA].limit)
   ieee80211_wake_queue(priv->hw, i);
 }
 spin_unlock_irqrestore(&priv->tx_stats_lock, flags);
}
