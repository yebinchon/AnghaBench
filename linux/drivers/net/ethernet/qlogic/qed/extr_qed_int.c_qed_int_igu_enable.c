
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int b_int_requested; int b_int_enabled; } ;
typedef enum qed_int_mode { ____Placeholder_qed_int_mode } qed_int_mode ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;
 scalar_t__ IS_LEAD_HWFN (struct qed_hwfn*) ;
 int QED_INT_MODE_INTA ;
 int qed_int_igu_enable_attn (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_int_igu_enable_int (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_slowpath_irq_req (struct qed_hwfn*) ;

int
qed_int_igu_enable(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt, enum qed_int_mode int_mode)
{
 int rc = 0;

 qed_int_igu_enable_attn(p_hwfn, p_ptt);

 if ((int_mode != QED_INT_MODE_INTA) || IS_LEAD_HWFN(p_hwfn)) {
  rc = qed_slowpath_irq_req(p_hwfn);
  if (rc) {
   DP_NOTICE(p_hwfn, "Slowpath IRQ request failed\n");
   return -EINVAL;
  }
  p_hwfn->b_int_requested = 1;
 }

 qed_int_igu_enable_int(p_hwfn, p_ptt, int_mode);
 p_hwfn->b_int_enabled = 1;

 return rc;
}
