
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DRV_MB_PARAM_BIST_NVM_TEST_NUM_IMAGES ;
 int DRV_MB_PARAM_BIST_TEST_INDEX_SHIFT ;
 int DRV_MSG_CODE_BIST_TEST ;
 int EINVAL ;
 int FW_MSG_CODE_MASK ;
 int FW_MSG_CODE_OK ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int,int*,int*) ;

int qed_mcp_bist_nvm_get_num_images(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt,
        u32 *num_images)
{
 u32 drv_mb_param = 0, rsp;
 int rc = 0;

 drv_mb_param = (DRV_MB_PARAM_BIST_NVM_TEST_NUM_IMAGES <<
   DRV_MB_PARAM_BIST_TEST_INDEX_SHIFT);

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_BIST_TEST,
    drv_mb_param, &rsp, num_images);
 if (rc)
  return rc;

 if (((rsp & FW_MSG_CODE_MASK) != FW_MSG_CODE_OK))
  rc = -EINVAL;

 return rc;
}
