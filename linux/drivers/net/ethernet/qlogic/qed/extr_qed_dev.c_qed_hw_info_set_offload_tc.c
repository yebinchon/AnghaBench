
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_hw_info {int offload_tc_set; int offload_tc; } ;



void qed_hw_info_set_offload_tc(struct qed_hw_info *p_info, u8 tc)
{
 p_info->offload_tc = tc;
 p_info->offload_tc_set = 1;
}
