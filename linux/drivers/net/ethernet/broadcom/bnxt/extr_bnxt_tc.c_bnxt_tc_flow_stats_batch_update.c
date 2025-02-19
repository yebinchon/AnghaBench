
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnxt_tc_stats_batch {int hw_stats; struct bnxt_tc_flow_node* flow_node; } ;
struct bnxt_tc_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ packets; } ;
struct TYPE_4__ {scalar_t__ packets; } ;
struct bnxt_tc_flow {int stats_lock; int lastused; TYPE_1__ prev_stats; TYPE_2__ stats; } ;
struct bnxt_tc_flow_node {struct bnxt_tc_flow flow; } ;
struct bnxt {struct bnxt_tc_info* tc_info; } ;


 int bnxt_flow_stats_accum (struct bnxt_tc_info*,TYPE_2__*,int *) ;
 int bnxt_hwrm_cfa_flow_stats_get (struct bnxt*,int,struct bnxt_tc_stats_batch*) ;
 int jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
bnxt_tc_flow_stats_batch_update(struct bnxt *bp, int num_flows,
    struct bnxt_tc_stats_batch stats_batch[])
{
 struct bnxt_tc_info *tc_info = bp->tc_info;
 int rc, i;

 rc = bnxt_hwrm_cfa_flow_stats_get(bp, num_flows, stats_batch);
 if (rc)
  return rc;

 for (i = 0; i < num_flows; i++) {
  struct bnxt_tc_flow_node *flow_node = stats_batch[i].flow_node;
  struct bnxt_tc_flow *flow = &flow_node->flow;

  spin_lock(&flow->stats_lock);
  bnxt_flow_stats_accum(tc_info, &flow->stats,
          &stats_batch[i].hw_stats);
  if (flow->stats.packets != flow->prev_stats.packets)
   flow->lastused = jiffies;
  spin_unlock(&flow->stats_lock);
 }

 return 0;
}
