
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fill_level; int fill_cnt; int lock; int refill_retry_timer; } ;
struct ath10k_htt {TYPE_1__ rx_ring; } ;


 int ATH10K_HTT_MAX_NUM_REFILL ;
 int ENOMEM ;
 int HTT_RX_RING_REFILL_RESCHED_MS ;
 int HTT_RX_RING_REFILL_RETRY_MS ;
 int ath10k_htt_rx_ring_fill_n (struct ath10k_htt*,int) ;
 scalar_t__ jiffies ;
 int min (int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_htt_rx_msdu_buff_replenish(struct ath10k_htt *htt)
{
 int ret, num_deficit, num_to_fill;
 spin_lock_bh(&htt->rx_ring.lock);
 num_deficit = htt->rx_ring.fill_level - htt->rx_ring.fill_cnt;
 num_to_fill = min(ATH10K_HTT_MAX_NUM_REFILL, num_deficit);
 num_deficit -= num_to_fill;
 ret = ath10k_htt_rx_ring_fill_n(htt, num_to_fill);
 if (ret == -ENOMEM) {






  mod_timer(&htt->rx_ring.refill_retry_timer, jiffies +
     msecs_to_jiffies(HTT_RX_RING_REFILL_RETRY_MS));
 } else if (num_deficit > 0) {
  mod_timer(&htt->rx_ring.refill_retry_timer, jiffies +
     msecs_to_jiffies(HTT_RX_RING_REFILL_RESCHED_MS));
 }
 spin_unlock_bh(&htt->rx_ring.lock);
}
