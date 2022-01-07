
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* cdev; } ;
struct TYPE_2__ {scalar_t__ num_hwfns; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_MASK ;
 scalar_t__ DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_SHIFT ;
 scalar_t__ DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_MASK ;
 scalar_t__ DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_SHIFT ;
 int DRV_MSG_CODE_CFG_VF_MSIX ;
 int EINVAL ;
 scalar_t__ FW_MSG_CODE_DRV_CFG_VF_MSIX_DONE ;
 int IS_LEAD_HWFN (struct qed_hwfn*) ;
 int QED_MSG_IOV ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
qed_mcp_config_vf_msix_bb(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt, u8 vf_id, u8 num)
{
 u32 resp = 0, param = 0, rc_param = 0;
 int rc;


 if (!IS_LEAD_HWFN(p_hwfn))
  return 0;
 num *= p_hwfn->cdev->num_hwfns;

 param |= (vf_id << DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_SHIFT) &
   DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_MASK;
 param |= (num << DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_SHIFT) &
   DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_MASK;

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_CFG_VF_MSIX, param,
    &resp, &rc_param);

 if (resp != FW_MSG_CODE_DRV_CFG_VF_MSIX_DONE) {
  DP_NOTICE(p_hwfn, "VF[%d]: MFW failed to set MSI-X\n", vf_id);
  rc = -EINVAL;
 } else {
  DP_VERBOSE(p_hwfn, QED_MSG_IOV,
      "Requested 0x%02x MSI-x interrupts from VF 0x%02x\n",
      num, vf_id);
 }

 return rc;
}
