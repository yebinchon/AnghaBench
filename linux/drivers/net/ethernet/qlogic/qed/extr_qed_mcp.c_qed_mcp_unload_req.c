
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_mb_params {int flags; int param; int cmd; } ;
struct qed_hwfn {TYPE_1__* cdev; } ;
typedef int mb_params ;
struct TYPE_2__ {int wol_config; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DRV_MB_PARAM_UNLOAD_WOL_DISABLED ;
 int DRV_MB_PARAM_UNLOAD_WOL_ENABLED ;
 int DRV_MB_PARAM_UNLOAD_WOL_MCP ;
 int DRV_MSG_CODE_UNLOAD_REQ ;
 int QED_MB_FLAG_AVOID_BLOCK ;
 int QED_MB_FLAG_CAN_SLEEP ;



 int memset (struct qed_mcp_mb_params*,int ,int) ;
 int qed_mcp_cmd_and_union (struct qed_hwfn*,struct qed_ptt*,struct qed_mcp_mb_params*) ;

int qed_mcp_unload_req(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 struct qed_mcp_mb_params mb_params;
 u32 wol_param;

 switch (p_hwfn->cdev->wol_config) {
 case 129:
  wol_param = DRV_MB_PARAM_UNLOAD_WOL_DISABLED;
  break;
 case 128:
  wol_param = DRV_MB_PARAM_UNLOAD_WOL_ENABLED;
  break;
 default:
  DP_NOTICE(p_hwfn,
     "Unknown WoL configuration %02x\n",
     p_hwfn->cdev->wol_config);

 case 130:
  wol_param = DRV_MB_PARAM_UNLOAD_WOL_MCP;
 }

 memset(&mb_params, 0, sizeof(mb_params));
 mb_params.cmd = DRV_MSG_CODE_UNLOAD_REQ;
 mb_params.param = wol_param;
 mb_params.flags = QED_MB_FLAG_CAN_SLEEP | QED_MB_FLAG_AVOID_BLOCK;

 return qed_mcp_cmd_and_union(p_hwfn, p_ptt, &mb_params);
}
