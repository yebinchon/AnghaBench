
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_resc_alloc_out_params {int res_id; int resc_start; int resc_num; int mcp_resp; int cmd; } ;
struct qed_resc_alloc_in_params {int res_id; int resc_start; int resc_num; int mcp_resp; int cmd; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef int out_params ;
typedef int in_params ;
typedef enum qed_resources { ____Placeholder_qed_resources } qed_resources ;


 int DRV_MSG_GET_RESOURCE_ALLOC_MSG ;
 int FW_MSG_CODE_RESOURCE_ALLOC_OK ;
 int memset (struct qed_resc_alloc_out_params*,int ,int) ;
 int qed_mcp_resc_allocation_msg (struct qed_hwfn*,struct qed_ptt*,struct qed_resc_alloc_out_params*,struct qed_resc_alloc_out_params*) ;

int
qed_mcp_get_resc_info(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt,
        enum qed_resources res_id,
        u32 *p_mcp_resp, u32 *p_resc_num, u32 *p_resc_start)
{
 struct qed_resc_alloc_out_params out_params;
 struct qed_resc_alloc_in_params in_params;
 int rc;

 memset(&in_params, 0, sizeof(in_params));
 in_params.cmd = DRV_MSG_GET_RESOURCE_ALLOC_MSG;
 in_params.res_id = res_id;
 memset(&out_params, 0, sizeof(out_params));
 rc = qed_mcp_resc_allocation_msg(p_hwfn, p_ptt, &in_params,
      &out_params);
 if (rc)
  return rc;

 *p_mcp_resp = out_params.mcp_resp;

 if (*p_mcp_resp == FW_MSG_CODE_RESOURCE_ALLOC_OK) {
  *p_resc_num = out_params.resc_num;
  *p_resc_start = out_params.resc_start;
 }

 return 0;
}
