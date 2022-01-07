
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fm10k_hw_stats_q {int dummy; } ;
struct fm10k_hw {int dummy; } ;


 int fm10k_update_hw_stats_rx_q (struct fm10k_hw*,struct fm10k_hw_stats_q*,scalar_t__) ;
 int fm10k_update_hw_stats_tx_q (struct fm10k_hw*,struct fm10k_hw_stats_q*,scalar_t__) ;

void fm10k_update_hw_stats_q(struct fm10k_hw *hw, struct fm10k_hw_stats_q *q,
        u32 idx, u32 count)
{
 u32 i;

 for (i = 0; i < count; i++, idx++, q++) {
  fm10k_update_hw_stats_tx_q(hw, q, idx);
  fm10k_update_hw_stats_rx_q(hw, q, idx);
 }
}
