
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DRV_MSG_CODE_NIG_DRAIN ;
 int msleep (int) ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int,int *,int *) ;

int qed_mcp_drain(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 resp = 0, param = 0;
 int rc;

 rc = qed_mcp_cmd(p_hwfn, p_ptt,
    DRV_MSG_CODE_NIG_DRAIN, 1000, &resp, &param);


 msleep(1020);

 return rc;
}
