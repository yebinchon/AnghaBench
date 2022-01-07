
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,...) ;
 int DRV_MSG_CODE_LOAD_DONE ;
 int FW_MB_PARAM_LOAD_DONE_DID_EFUSE_ERROR ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,int*,int*) ;

int qed_mcp_load_done(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 resp = 0, param = 0;
 int rc;

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_LOAD_DONE, 0, &resp,
    &param);
 if (rc) {
  DP_NOTICE(p_hwfn,
     "Failed to send a LOAD_DONE command, rc = %d\n", rc);
  return rc;
 }


 if (param & FW_MB_PARAM_LOAD_DONE_DID_EFUSE_ERROR)
  DP_NOTICE(p_hwfn,
     "warning: device configuration is not supported on this board type. The device may not function as expected.\n");

 return 0;
}
