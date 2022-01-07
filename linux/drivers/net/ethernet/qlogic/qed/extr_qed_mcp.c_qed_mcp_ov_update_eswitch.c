
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_ov_eswitch { ____Placeholder_qed_ov_eswitch } qed_ov_eswitch ;


 int DP_ERR (struct qed_hwfn*,char*,int) ;
 int DRV_MB_PARAM_ESWITCH_MODE_NONE ;
 int DRV_MB_PARAM_ESWITCH_MODE_VEB ;
 int DRV_MB_PARAM_ESWITCH_MODE_VEPA ;
 int DRV_MSG_CODE_OV_UPDATE_ESWITCH_MODE ;
 int EINVAL ;



 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,int *,int *) ;

int qed_mcp_ov_update_eswitch(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         enum qed_ov_eswitch eswitch)
{
 u32 resp = 0, param = 0;
 u32 drv_mb_param;
 int rc;

 switch (eswitch) {
 case 130:
  drv_mb_param = DRV_MB_PARAM_ESWITCH_MODE_NONE;
  break;
 case 129:
  drv_mb_param = DRV_MB_PARAM_ESWITCH_MODE_VEB;
  break;
 case 128:
  drv_mb_param = DRV_MB_PARAM_ESWITCH_MODE_VEPA;
  break;
 default:
  DP_ERR(p_hwfn, "Invalid eswitch mode %d\n", eswitch);
  return -EINVAL;
 }

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_OV_UPDATE_ESWITCH_MODE,
    drv_mb_param, &resp, &param);
 if (rc)
  DP_ERR(p_hwfn, "Failed to send eswitch mode, rc = %d\n", rc);

 return rc;
}
