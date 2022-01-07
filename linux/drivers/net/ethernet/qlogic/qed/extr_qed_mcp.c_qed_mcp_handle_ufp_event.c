
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_ptt {int dummy; } ;
struct TYPE_4__ {scalar_t__ mode; int tc; } ;
struct TYPE_3__ {int ooo_tc; } ;
struct qed_hwfn {TYPE_2__ ufp_info; int hw_info; TYPE_1__ qm_info; } ;


 int DP_ERR (struct qed_hwfn*,char*) ;
 int EINVAL ;
 int QED_DCBX_OPERATIONAL_MIB ;
 scalar_t__ QED_UFP_MODE_ETS ;
 scalar_t__ QED_UFP_MODE_VNIC_BW ;
 int qed_dcbx_mib_update_event (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_hw_info_set_offload_tc (int *,int ) ;
 int qed_mcp_read_ufp_config (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_qm_reconf (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_sp_pf_update_stag (struct qed_hwfn*) ;
 int qed_sp_pf_update_ufp (struct qed_hwfn*) ;

__attribute__((used)) static int
qed_mcp_handle_ufp_event(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 qed_mcp_read_ufp_config(p_hwfn, p_ptt);

 if (p_hwfn->ufp_info.mode == QED_UFP_MODE_VNIC_BW) {
  p_hwfn->qm_info.ooo_tc = p_hwfn->ufp_info.tc;
  qed_hw_info_set_offload_tc(&p_hwfn->hw_info,
        p_hwfn->ufp_info.tc);

  qed_qm_reconf(p_hwfn, p_ptt);
 } else if (p_hwfn->ufp_info.mode == QED_UFP_MODE_ETS) {

  qed_dcbx_mib_update_event(p_hwfn, p_ptt,
       QED_DCBX_OPERATIONAL_MIB);
 } else {
  DP_ERR(p_hwfn, "Invalid sched type, discard the UFP config\n");
  return -EINVAL;
 }


 qed_sp_pf_update_ufp(p_hwfn);


 qed_sp_pf_update_stag(p_hwfn);

 return 0;
}
