
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_led_mode { ____Placeholder_qed_led_mode } qed_led_mode ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DRV_MB_PARAM_SET_LED_MODE_OFF ;
 int DRV_MB_PARAM_SET_LED_MODE_ON ;
 int DRV_MB_PARAM_SET_LED_MODE_OPER ;
 int DRV_MSG_CODE_SET_LED_MODE ;
 int EINVAL ;



 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,int *,int *) ;

int qed_mcp_set_led(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt, enum qed_led_mode mode)
{
 u32 resp = 0, param = 0, drv_mb_param;
 int rc;

 switch (mode) {
 case 129:
  drv_mb_param = DRV_MB_PARAM_SET_LED_MODE_ON;
  break;
 case 130:
  drv_mb_param = DRV_MB_PARAM_SET_LED_MODE_OFF;
  break;
 case 128:
  drv_mb_param = DRV_MB_PARAM_SET_LED_MODE_OPER;
  break;
 default:
  DP_NOTICE(p_hwfn, "Invalid LED mode %d\n", mode);
  return -EINVAL;
 }

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_SET_LED_MODE,
    drv_mb_param, &resp, &param);

 return rc;
}
