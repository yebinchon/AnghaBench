
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 scalar_t__ QM_REG_WFQPFWEIGHT ;
 scalar_t__ QM_WFQ_INC_VAL (int ) ;
 scalar_t__ QM_WFQ_MAX_INC_VAL ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,scalar_t__,scalar_t__) ;

int qed_init_pf_wfq(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt, u8 pf_id, u16 pf_wfq)
{
 u32 inc_val = QM_WFQ_INC_VAL(pf_wfq);

 if (!inc_val || inc_val > QM_WFQ_MAX_INC_VAL) {
  DP_NOTICE(p_hwfn, "Invalid PF WFQ weight configuration\n");
  return -1;
 }

 qed_wr(p_hwfn, p_ptt, QM_REG_WFQPFWEIGHT + pf_id * 4, inc_val);

 return 0;
}
