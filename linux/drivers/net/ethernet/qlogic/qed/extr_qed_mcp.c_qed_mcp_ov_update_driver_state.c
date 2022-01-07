
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_ov_driver_state { ____Placeholder_qed_ov_driver_state } qed_ov_driver_state ;


 int DP_ERR (struct qed_hwfn*,char*) ;
 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE ;
 int DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_ACTIVE ;
 int DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_DISABLED ;
 int DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_NOT_LOADED ;
 int EINVAL ;



 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,int *,int *) ;

int qed_mcp_ov_update_driver_state(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       enum qed_ov_driver_state drv_state)
{
 u32 resp = 0, param = 0;
 u32 drv_mb_param;
 int rc;

 switch (drv_state) {
 case 128:
  drv_mb_param = DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_NOT_LOADED;
  break;
 case 129:
  drv_mb_param = DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_DISABLED;
  break;
 case 130:
  drv_mb_param = DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE_ACTIVE;
  break;
 default:
  DP_NOTICE(p_hwfn, "Invalid driver state %d\n", drv_state);
  return -EINVAL;
 }

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_OV_UPDATE_DRIVER_STATE,
    drv_mb_param, &resp, &param);
 if (rc)
  DP_ERR(p_hwfn, "Failed to send driver state\n");

 return rc;
}
