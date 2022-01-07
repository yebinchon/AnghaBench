
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct qed_tunnel_info {int dummy; } ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_function_info {scalar_t__ bandwidth_min; } ;
struct TYPE_6__ {int ovlan; scalar_t__ personality; } ;
struct TYPE_5__ {int pf_rl; scalar_t__ pf_wfq; } ;
struct qed_hwfn {TYPE_3__ hw_info; TYPE_2__ qm_info; TYPE_1__* mcp_info; int rel_pf_id; } ;
typedef enum qed_int_mode { ____Placeholder_qed_int_mode } qed_int_mode ;
struct TYPE_4__ {struct qed_mcp_function_info func_info; } ;


 int BIT (int) ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 scalar_t__ IS_LEAD_HWFN (struct qed_hwfn*) ;
 int MODE_MF_SD ;
 int MODE_MF_SI ;
 int NETIF_MSG_HW ;
 int NIG_REG_LLH_FUNC_FILTER_HDR_SEL_RT_OFFSET ;
 int NIG_REG_LLH_FUNC_TAGMAC_CLS_TYPE_RT_OFFSET ;
 int NIG_REG_LLH_FUNC_TAG_EN_RT_OFFSET ;
 int NIG_REG_LLH_FUNC_TAG_VALUE_RT_OFFSET ;
 int PHASE_PF ;
 int PHASE_QM_PF ;
 int PRS_REG_PKT_LEN_STAT_TAGS_NOT_COUNTED_FIRST ;
 int PRS_REG_SEARCH_FCOE_RT_OFFSET ;
 int PRS_REG_SEARCH_ROCE_RT_OFFSET ;
 int PRS_REG_SEARCH_TAG1 ;
 int PRS_REG_SEARCH_TCP_RT_OFFSET ;
 scalar_t__ QED_PCI_FCOE ;
 scalar_t__ QED_PCI_ISCSI ;
 int STORE_RT_REG (struct qed_hwfn*,int ,int) ;
 int qed_cxt_hw_init_pf (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_dmae_sanity (struct qed_hwfn*,struct qed_ptt*,char*) ;
 int qed_hw_init_pf_doorbell_bar (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_init_run (struct qed_hwfn*,struct qed_ptt*,int ,int ,int) ;
 int qed_int_igu_enable (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_int_igu_init_pure_rt (struct qed_hwfn*,struct qed_ptt*,int,int) ;
 int qed_int_igu_init_rt (struct qed_hwfn*) ;
 int qed_llh_hw_init_pf (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_sp_pf_start (struct qed_hwfn*,struct qed_ptt*,struct qed_tunnel_info*,int) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

__attribute__((used)) static int qed_hw_init_pf(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt,
     struct qed_tunnel_info *p_tunn,
     int hw_mode,
     bool b_hw_start,
     enum qed_int_mode int_mode,
     bool allow_npar_tx_switch)
{
 u8 rel_pf_id = p_hwfn->rel_pf_id;
 int rc = 0;

 if (p_hwfn->mcp_info) {
  struct qed_mcp_function_info *p_info;

  p_info = &p_hwfn->mcp_info->func_info;
  if (p_info->bandwidth_min)
   p_hwfn->qm_info.pf_wfq = p_info->bandwidth_min;


  p_hwfn->qm_info.pf_rl = 100000;
 }

 qed_cxt_hw_init_pf(p_hwfn, p_ptt);

 qed_int_igu_init_rt(p_hwfn);


 if (hw_mode & BIT(MODE_MF_SD)) {
  DP_VERBOSE(p_hwfn, NETIF_MSG_HW, "Configuring LLH_FUNC_TAG\n");
  STORE_RT_REG(p_hwfn, NIG_REG_LLH_FUNC_TAG_EN_RT_OFFSET, 1);
  STORE_RT_REG(p_hwfn, NIG_REG_LLH_FUNC_TAG_VALUE_RT_OFFSET,
        p_hwfn->hw_info.ovlan);

  DP_VERBOSE(p_hwfn, NETIF_MSG_HW,
      "Configuring LLH_FUNC_FILTER_HDR_SEL\n");
  STORE_RT_REG(p_hwfn, NIG_REG_LLH_FUNC_FILTER_HDR_SEL_RT_OFFSET,
        1);
 }


 if (hw_mode & BIT(MODE_MF_SI)) {
  DP_VERBOSE(p_hwfn, NETIF_MSG_HW,
      "Configuring TAGMAC_CLS_TYPE\n");
  STORE_RT_REG(p_hwfn,
        NIG_REG_LLH_FUNC_TAGMAC_CLS_TYPE_RT_OFFSET, 1);
 }


 STORE_RT_REG(p_hwfn, PRS_REG_SEARCH_TCP_RT_OFFSET,
       (p_hwfn->hw_info.personality == QED_PCI_ISCSI) ? 1 : 0);
 STORE_RT_REG(p_hwfn, PRS_REG_SEARCH_FCOE_RT_OFFSET,
       (p_hwfn->hw_info.personality == QED_PCI_FCOE) ? 1 : 0);
 STORE_RT_REG(p_hwfn, PRS_REG_SEARCH_ROCE_RT_OFFSET, 0);


 rc = qed_dmae_sanity(p_hwfn, p_ptt, "pf_phase");
 if (rc)
  return rc;


 rc = qed_init_run(p_hwfn, p_ptt, PHASE_PF, rel_pf_id, hw_mode);
 if (rc)
  return rc;


 rc = qed_init_run(p_hwfn, p_ptt, PHASE_QM_PF, rel_pf_id, hw_mode);
 if (rc)
  return rc;


 qed_int_igu_init_pure_rt(p_hwfn, p_ptt, 1, 1);

 rc = qed_hw_init_pf_doorbell_bar(p_hwfn, p_ptt);
 if (rc)
  return rc;


 if (IS_LEAD_HWFN(p_hwfn)) {
  rc = qed_llh_hw_init_pf(p_hwfn, p_ptt);
  if (rc)
   return rc;
 }

 if (b_hw_start) {

  qed_int_igu_enable(p_hwfn, p_ptt, int_mode);


  rc = qed_sp_pf_start(p_hwfn, p_ptt, p_tunn,
         allow_npar_tx_switch);
  if (rc) {
   DP_NOTICE(p_hwfn, "Function start ramrod failed\n");
   return rc;
  }
  if (p_hwfn->hw_info.personality == QED_PCI_FCOE) {
   qed_wr(p_hwfn, p_ptt, PRS_REG_SEARCH_TAG1, BIT(2));
   qed_wr(p_hwfn, p_ptt,
          PRS_REG_PKT_LEN_STAT_TAGS_NOT_COUNTED_FIRST,
          0x100);
  }
 }
 return rc;
}
