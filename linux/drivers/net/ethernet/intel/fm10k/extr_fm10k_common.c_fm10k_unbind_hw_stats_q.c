
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fm10k_hw_stats_q {scalar_t__ tx_stats_idx; scalar_t__ rx_stats_idx; } ;



void fm10k_unbind_hw_stats_q(struct fm10k_hw_stats_q *q, u32 idx, u32 count)
{
 u32 i;

 for (i = 0; i < count; i++, idx++, q++) {
  q->rx_stats_idx = 0;
  q->tx_stats_idx = 0;
 }
}
