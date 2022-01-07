
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int db_bar_no_edpm; int dcbx_no_edpm; } ;


 int DORQ_REG_PF_DPM_ENABLE ;
 int DP_VERBOSE (struct qed_hwfn*,int,char*,int,int ,int ) ;
 int QED_MSG_DCB ;
 int QED_MSG_RDMA ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

void qed_rdma_dpm_conf(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 val;

 val = (p_hwfn->dcbx_no_edpm || p_hwfn->db_bar_no_edpm) ? 0 : 1;

 qed_wr(p_hwfn, p_ptt, DORQ_REG_PF_DPM_ENABLE, val);
 DP_VERBOSE(p_hwfn, (QED_MSG_DCB | QED_MSG_RDMA),
     "Changing DPM_EN state to %d (DCBX=%d, DB_BAR=%d)\n",
     val, p_hwfn->dcbx_no_edpm, p_hwfn->db_bar_no_edpm);
}
