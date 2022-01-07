
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_tc_info {int packets_mask; int bytes_mask; } ;
struct bnxt_tc_flow_stats {int packets; int bytes; } ;


 int accumulate_val (int *,int ,int ) ;

__attribute__((used)) static void bnxt_flow_stats_accum(struct bnxt_tc_info *tc_info,
      struct bnxt_tc_flow_stats *acc_stats,
      struct bnxt_tc_flow_stats *hw_stats)
{
 accumulate_val(&acc_stats->bytes, hw_stats->bytes, tc_info->bytes_mask);
 accumulate_val(&acc_stats->packets, hw_stats->packets,
         tc_info->packets_mask);
}
