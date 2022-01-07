
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct p54_common {scalar_t__ beacon_req_id; int beacon_comp; int tx_stats_lock; TYPE_1__* tx_stats; } ;
struct TYPE_2__ {int len; } ;


 size_t GET_HW_QUEUE (struct sk_buff*) ;
 scalar_t__ GET_REQ_ID (struct sk_buff*) ;
 scalar_t__ IS_DATA_FRAME (struct sk_buff*) ;
 size_t P54_QUEUE_BEACON ;
 int complete (int *) ;
 int p54_wake_queues (struct p54_common*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void p54_tx_qos_accounting_free(struct p54_common *priv,
           struct sk_buff *skb)
{
 if (IS_DATA_FRAME(skb)) {
  unsigned long flags;

  spin_lock_irqsave(&priv->tx_stats_lock, flags);
  priv->tx_stats[GET_HW_QUEUE(skb)].len--;
  spin_unlock_irqrestore(&priv->tx_stats_lock, flags);

  if (unlikely(GET_HW_QUEUE(skb) == P54_QUEUE_BEACON)) {
   if (priv->beacon_req_id == GET_REQ_ID(skb)) {

    priv->beacon_req_id = 0;
   }
   complete(&priv->beacon_comp);
  }
 }
 p54_wake_queues(priv);
}
