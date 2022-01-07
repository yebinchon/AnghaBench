
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DRV_MB_PARAM_FEATURE_SUPPORT_FUNC_VLINK ;
 int DRV_MB_PARAM_FEATURE_SUPPORT_PORT_EEE ;
 int DRV_MSG_CODE_FEATURE_SUPPORT ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int,int*,int*) ;

int qed_mcp_set_capabilities(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 mcp_resp, mcp_param, features;

 features = DRV_MB_PARAM_FEATURE_SUPPORT_PORT_EEE |
     DRV_MB_PARAM_FEATURE_SUPPORT_FUNC_VLINK;

 return qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_FEATURE_SUPPORT,
      features, &mcp_resp, &mcp_param);
}
