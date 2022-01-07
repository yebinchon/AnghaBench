
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* cdev; } ;
typedef enum BAR_ID { ____Placeholder_BAR_ID } BAR_ID ;
struct TYPE_2__ {int num_hwfns; } ;


 int BAR_ID_0 ;
 int DP_INFO (struct qed_hwfn*,char*) ;
 scalar_t__ IS_VF (TYPE_1__*) ;
 int PGLUE_B_REG_PF_BAR0_SIZE ;
 int PGLUE_B_REG_PF_BAR1_SIZE ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_vf_hw_bar_size (struct qed_hwfn*,int) ;

__attribute__((used)) static u32 qed_hw_bar_size(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt, enum BAR_ID bar_id)
{
 u32 bar_reg = (bar_id == BAR_ID_0 ?
         PGLUE_B_REG_PF_BAR0_SIZE : PGLUE_B_REG_PF_BAR1_SIZE);
 u32 val;

 if (IS_VF(p_hwfn->cdev))
  return qed_vf_hw_bar_size(p_hwfn, bar_id);

 val = qed_rd(p_hwfn, p_ptt, bar_reg);
 if (val)
  return 1 << (val + 15);


 if (p_hwfn->cdev->num_hwfns > 1) {
  DP_INFO(p_hwfn,
   "BAR size not configured. Assuming BAR size of 256kB for GRC and 512kB for DB\n");
   return BAR_ID_0 ? 256 * 1024 : 512 * 1024;
 } else {
  DP_INFO(p_hwfn,
   "BAR size not configured. Assuming BAR size of 512kB for GRC and 512kB for DB\n");
   return 512 * 1024;
 }
}
