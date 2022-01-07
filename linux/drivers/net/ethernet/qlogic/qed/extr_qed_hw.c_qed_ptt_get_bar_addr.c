
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_ptt {int idx; } ;


 int PXP_EXTERNAL_BAR_PF_WINDOW_SINGLE_SIZE ;
 scalar_t__ PXP_EXTERNAL_BAR_PF_WINDOW_START ;

u32 qed_ptt_get_bar_addr(struct qed_ptt *p_ptt)
{
 return PXP_EXTERNAL_BAR_PF_WINDOW_START +
        p_ptt->idx * PXP_EXTERNAL_BAR_PF_WINDOW_SINGLE_SIZE;
}
