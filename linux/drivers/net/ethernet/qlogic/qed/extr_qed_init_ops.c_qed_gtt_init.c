
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct qed_hwfn {int dummy; } ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 size_t PXP_GLOBAL_ENTRY_SIZE ;
 size_t PXP_PF_WINDOW_ADMIN_GLOBAL_START ;
 size_t PXP_PF_WINDOW_ADMIN_START ;
 int REG_WR (struct qed_hwfn*,size_t,scalar_t__) ;
 scalar_t__* pxp_global_win ;

void qed_gtt_init(struct qed_hwfn *p_hwfn)
{
 u32 gtt_base;
 u32 i;


 gtt_base = PXP_PF_WINDOW_ADMIN_START + PXP_PF_WINDOW_ADMIN_GLOBAL_START;

 for (i = 0; i < ARRAY_SIZE(pxp_global_win); i++)
  if (pxp_global_win[i])
   REG_WR(p_hwfn, gtt_base + i * PXP_GLOBAL_ENTRY_SIZE,
          pxp_global_win[i]);
}
