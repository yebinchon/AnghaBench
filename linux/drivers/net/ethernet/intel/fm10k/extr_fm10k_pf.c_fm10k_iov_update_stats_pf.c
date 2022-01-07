
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_hw_stats_q {int dummy; } ;
struct fm10k_hw {int dummy; } ;


 int fm10k_queues_per_pool (struct fm10k_hw*) ;
 int fm10k_update_hw_stats_q (struct fm10k_hw*,struct fm10k_hw_stats_q*,int ,int ) ;
 int fm10k_vf_queue_index (struct fm10k_hw*,int ) ;

__attribute__((used)) static void fm10k_iov_update_stats_pf(struct fm10k_hw *hw,
          struct fm10k_hw_stats_q *q,
          u16 vf_idx)
{
 u32 idx, qpp;


 qpp = fm10k_queues_per_pool(hw);
 idx = fm10k_vf_queue_index(hw, vf_idx);
 fm10k_update_hw_stats_q(hw, q, idx, qpp);
}
