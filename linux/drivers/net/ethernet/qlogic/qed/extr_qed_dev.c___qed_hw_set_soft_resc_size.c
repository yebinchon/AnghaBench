
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_resources { ____Placeholder_qed_resources } qed_resources ;


 int DP_INFO (struct qed_hwfn*,char*,int,int ,scalar_t__) ;
 int DP_NOTICE (struct qed_hwfn*,char*,int,int ) ;
 scalar_t__ FW_MSG_CODE_RESOURCE_ALLOC_OK ;
 int qed_hw_get_resc_name (int) ;
 int qed_mcp_set_resc_max_val (struct qed_hwfn*,struct qed_ptt*,int,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int
__qed_hw_set_soft_resc_size(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       enum qed_resources res_id,
       u32 resc_max_val, u32 *p_mcp_resp)
{
 int rc;

 rc = qed_mcp_set_resc_max_val(p_hwfn, p_ptt, res_id,
          resc_max_val, p_mcp_resp);
 if (rc) {
  DP_NOTICE(p_hwfn,
     "MFW response failure for a max value setting of resource %d [%s]\n",
     res_id, qed_hw_get_resc_name(res_id));
  return rc;
 }

 if (*p_mcp_resp != FW_MSG_CODE_RESOURCE_ALLOC_OK)
  DP_INFO(p_hwfn,
   "Failed to set the max value of resource %d [%s]. mcp_resp = 0x%08x.\n",
   res_id, qed_hw_get_resc_name(res_id), *p_mcp_resp);

 return 0;
}
