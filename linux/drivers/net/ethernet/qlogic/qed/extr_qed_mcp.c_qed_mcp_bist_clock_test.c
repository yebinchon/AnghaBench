
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 scalar_t__ DRV_MB_PARAM_BIST_CLOCK_TEST ;
 scalar_t__ DRV_MB_PARAM_BIST_RC_PASSED ;
 scalar_t__ DRV_MB_PARAM_BIST_TEST_INDEX_SHIFT ;
 int DRV_MSG_CODE_BIST_TEST ;
 int EAGAIN ;
 scalar_t__ FW_MSG_CODE_MASK ;
 scalar_t__ FW_MSG_CODE_OK ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;

int qed_mcp_bist_clock_test(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 drv_mb_param, rsp, param;
 int rc = 0;

 drv_mb_param = (DRV_MB_PARAM_BIST_CLOCK_TEST <<
   DRV_MB_PARAM_BIST_TEST_INDEX_SHIFT);

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_BIST_TEST,
    drv_mb_param, &rsp, &param);

 if (rc)
  return rc;

 if (((rsp & FW_MSG_CODE_MASK) != FW_MSG_CODE_OK) ||
     (param != DRV_MB_PARAM_BIST_RC_PASSED))
  rc = -EAGAIN;

 return rc;
}
