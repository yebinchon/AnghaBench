
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__) ;
 int DRV_MSG_CODE_CFG_PF_VFS_MSIX ;
 int EINVAL ;
 scalar_t__ FW_MSG_CODE_DRV_CFG_PF_VFS_MSIX_DONE ;
 int QED_MSG_IOV ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
qed_mcp_config_vf_msix_ah(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt, u8 num)
{
 u32 resp = 0, param = num, rc_param = 0;
 int rc;

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_CFG_PF_VFS_MSIX,
    param, &resp, &rc_param);

 if (resp != FW_MSG_CODE_DRV_CFG_PF_VFS_MSIX_DONE) {
  DP_NOTICE(p_hwfn, "MFW failed to set MSI-X for VFs\n");
  rc = -EINVAL;
 } else {
  DP_VERBOSE(p_hwfn, QED_MSG_IOV,
      "Requested 0x%02x MSI-x interrupts for VFs\n", num);
 }

 return rc;
}
