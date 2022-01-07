
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int capabilities; } ;


 int DP_VERBOSE (struct qed_hwfn*,int,char*,int ) ;
 int DRV_MSG_CODE_GET_MFW_FEATURE_SUPPORT ;
 int NETIF_MSG_PROBE ;
 int QED_MSG_SP ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,int *,int *) ;

int qed_mcp_get_capabilities(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 mcp_resp;
 int rc;

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_GET_MFW_FEATURE_SUPPORT,
    0, &mcp_resp, &p_hwfn->mcp_info->capabilities);
 if (!rc)
  DP_VERBOSE(p_hwfn, (QED_MSG_SP | NETIF_MSG_PROBE),
      "MFW supported features: %08x\n",
      p_hwfn->mcp_info->capabilities);

 return rc;
}
