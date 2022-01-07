
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ inactivity_timeout; } ;
struct cfhsi {int lock; TYPE_3__ cfg; int inactivity_timer; int bits; int tx_state; TYPE_2__* ndev; } ;
struct TYPE_4__ {int tx_dropped; int tx_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int CFHSI_SHUTDOWN ;
 int CFHSI_TX_STATE_IDLE ;
 struct sk_buff* cfhsi_dequeue (struct cfhsi*) ;
 int cfhsi_update_aggregation_stats (struct cfhsi*,struct sk_buff*,int) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void cfhsi_abort_tx(struct cfhsi *cfhsi)
{
 struct sk_buff *skb;

 for (;;) {
  spin_lock_bh(&cfhsi->lock);
  skb = cfhsi_dequeue(cfhsi);
  if (!skb)
   break;

  cfhsi->ndev->stats.tx_errors++;
  cfhsi->ndev->stats.tx_dropped++;
  cfhsi_update_aggregation_stats(cfhsi, skb, -1);
  spin_unlock_bh(&cfhsi->lock);
  kfree_skb(skb);
 }
 cfhsi->tx_state = CFHSI_TX_STATE_IDLE;
 if (!test_bit(CFHSI_SHUTDOWN, &cfhsi->bits))
  mod_timer(&cfhsi->inactivity_timer,
   jiffies + cfhsi->cfg.inactivity_timeout);
 spin_unlock_bh(&cfhsi->lock);
}
