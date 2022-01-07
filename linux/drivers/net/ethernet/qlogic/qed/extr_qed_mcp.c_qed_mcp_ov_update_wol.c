
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_4__ {scalar_t__ b_wol_support; } ;
struct qed_hwfn {TYPE_1__* cdev; TYPE_2__ hw_info; } ;
typedef enum qed_ov_wol { ____Placeholder_qed_ov_wol } qed_ov_wol ;
struct TYPE_3__ {scalar_t__ wol_config; } ;


 int DP_ERR (struct qed_hwfn*,char*,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int DRV_MB_PARAM_WOL_DEFAULT ;
 int DRV_MB_PARAM_WOL_DISABLED ;
 int DRV_MB_PARAM_WOL_ENABLED ;
 int DRV_MSG_CODE_OV_UPDATE_WOL ;
 int EINVAL ;
 int QED_MSG_SP ;



 scalar_t__ QED_WOL_SUPPORT_NONE ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,int *,int *) ;

int qed_mcp_ov_update_wol(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt, enum qed_ov_wol wol)
{
 u32 resp = 0, param = 0;
 u32 drv_mb_param;
 int rc;

 if (p_hwfn->hw_info.b_wol_support == QED_WOL_SUPPORT_NONE) {
  DP_VERBOSE(p_hwfn, QED_MSG_SP,
      "Can't change WoL configuration when WoL isn't supported\n");
  return -EINVAL;
 }

 switch (wol) {
 case 130:
  drv_mb_param = DRV_MB_PARAM_WOL_DEFAULT;
  break;
 case 129:
  drv_mb_param = DRV_MB_PARAM_WOL_DISABLED;
  break;
 case 128:
  drv_mb_param = DRV_MB_PARAM_WOL_ENABLED;
  break;
 default:
  DP_ERR(p_hwfn, "Invalid wol state %d\n", wol);
  return -EINVAL;
 }

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_OV_UPDATE_WOL,
    drv_mb_param, &resp, &param);
 if (rc)
  DP_ERR(p_hwfn, "Failed to send wol mode, rc = %d\n", rc);


 p_hwfn->cdev->wol_config = (u8)wol;

 return rc;
}
