
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct ath10k_htt {int dummy; } ;
struct TYPE_2__ {int refill_retry_timer; } ;


 int ath10k_htt_rx_msdu_buff_replenish (struct ath10k_htt*) ;
 struct ath10k_htt* from_timer (int ,struct timer_list*,int ) ;
 struct ath10k_htt* htt ;
 TYPE_1__ rx_ring ;

__attribute__((used)) static void ath10k_htt_rx_ring_refill_retry(struct timer_list *t)
{
 struct ath10k_htt *htt = from_timer(htt, t, rx_ring.refill_retry_timer);

 ath10k_htt_rx_msdu_buff_replenish(htt);
}
