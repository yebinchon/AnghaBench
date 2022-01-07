
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fm10k_hw_stats {int q; int nodesc_drop; int loopback_drop; int vlan_drop; int xec; int um; int ca; int ur; int timeout; } ;
struct TYPE_2__ {int max_queues; } ;
struct fm10k_hw {TYPE_1__ mac; } ;


 int fm10k_unbind_hw_stats_32b (int *) ;
 int fm10k_unbind_hw_stats_q (int ,int ,int ) ;
 int fm10k_update_hw_stats_pf (struct fm10k_hw*,struct fm10k_hw_stats*) ;

__attribute__((used)) static void fm10k_rebind_hw_stats_pf(struct fm10k_hw *hw,
         struct fm10k_hw_stats *stats)
{

 fm10k_unbind_hw_stats_32b(&stats->timeout);
 fm10k_unbind_hw_stats_32b(&stats->ur);
 fm10k_unbind_hw_stats_32b(&stats->ca);
 fm10k_unbind_hw_stats_32b(&stats->um);
 fm10k_unbind_hw_stats_32b(&stats->xec);
 fm10k_unbind_hw_stats_32b(&stats->vlan_drop);
 fm10k_unbind_hw_stats_32b(&stats->loopback_drop);
 fm10k_unbind_hw_stats_32b(&stats->nodesc_drop);


 fm10k_unbind_hw_stats_q(stats->q, 0, hw->mac.max_queues);


 fm10k_update_hw_stats_pf(hw, stats);
}
