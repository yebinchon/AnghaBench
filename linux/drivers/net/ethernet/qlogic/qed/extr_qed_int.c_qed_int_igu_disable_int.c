
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int cdev; scalar_t__ b_int_enabled; } ;


 int IGU_REG_PF_CONFIGURATION ;
 scalar_t__ IS_VF (int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;

void qed_int_igu_disable_int(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 p_hwfn->b_int_enabled = 0;

 if (IS_VF(p_hwfn->cdev))
  return;

 qed_wr(p_hwfn, p_ptt, IGU_REG_PF_CONFIGURATION, 0);
}
