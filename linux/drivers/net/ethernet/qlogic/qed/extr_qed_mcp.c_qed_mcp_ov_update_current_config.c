
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_ov_client { ____Placeholder_qed_ov_client } qed_ov_client ;


 int DP_ERR (struct qed_hwfn*,char*) ;
 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DRV_MB_PARAM_OV_CURR_CFG_OS ;
 int DRV_MB_PARAM_OV_CURR_CFG_OTHER ;
 int DRV_MB_PARAM_OV_CURR_CFG_VENDOR_SPEC ;
 int DRV_MSG_CODE_OV_UPDATE_CURR_CFG ;
 int EINVAL ;



 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,int *,int *) ;

int qed_mcp_ov_update_current_config(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         enum qed_ov_client client)
{
 u32 resp = 0, param = 0;
 u32 drv_mb_param;
 int rc;

 switch (client) {
 case 130:
  drv_mb_param = DRV_MB_PARAM_OV_CURR_CFG_OS;
  break;
 case 129:
  drv_mb_param = DRV_MB_PARAM_OV_CURR_CFG_OTHER;
  break;
 case 128:
  drv_mb_param = DRV_MB_PARAM_OV_CURR_CFG_VENDOR_SPEC;
  break;
 default:
  DP_NOTICE(p_hwfn, "Invalid client type %d\n", client);
  return -EINVAL;
 }

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_OV_UPDATE_CURR_CFG,
    drv_mb_param, &resp, &param);
 if (rc)
  DP_ERR(p_hwfn, "MCP response failure, aborting\n");

 return rc;
}
