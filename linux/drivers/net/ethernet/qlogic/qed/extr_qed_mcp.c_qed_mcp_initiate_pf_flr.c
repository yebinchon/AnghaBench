
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DRV_MSG_CODE_INITIATE_PF_FLR ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,int *,int *) ;

int qed_mcp_initiate_pf_flr(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 mcp_resp, mcp_param;

 return qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_INITIATE_PF_FLR, 0,
      &mcp_resp, &mcp_param);
}
