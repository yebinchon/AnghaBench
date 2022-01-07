
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_info {scalar_t__ res_id; int cmd; int data_src_size; int data_dst_size; int flags; int vf_offset; int vf_size; int offset; int size; int mcp_param; int mcp_resp; int param; struct resource_info* p_data_src; struct resource_info* p_data_dst; } ;
struct qed_resc_alloc_out_params {int flags; int vf_resc_start; int vf_resc_num; int resc_start; int resc_num; int mcp_param; int mcp_resp; } ;
struct qed_resc_alloc_in_params {int cmd; int resc_max_val; int res_id; } ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_mb_params {scalar_t__ res_id; int cmd; int data_src_size; int data_dst_size; int flags; int vf_offset; int vf_size; int offset; int size; int mcp_param; int mcp_resp; int param; struct qed_mcp_mb_params* p_data_src; struct qed_mcp_mb_params* p_data_dst; } ;
struct qed_hwfn {int dummy; } ;
typedef int mfw_resc_info ;
typedef int mb_params ;


 int DP_ERR (struct qed_hwfn*,char*,int,...) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,int ,int ,int ,int ,int ,...) ;
 int DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR ;
 int DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR ;


 int EINVAL ;
 int FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR ;
 int FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR ;
 int QED_MFW_GET_FIELD (int ,int ) ;
 int QED_MSG_SP ;
 int QED_RESC_ALLOC_VERSION ;
 scalar_t__ RESOURCE_NUM_INVALID ;
 int memset (struct resource_info*,int ,int) ;
 int qed_hw_get_resc_name (int ) ;
 int qed_mcp_cmd_and_union (struct qed_hwfn*,struct qed_ptt*,struct resource_info*) ;
 scalar_t__ qed_mcp_get_mfw_res_id (int ) ;

__attribute__((used)) static int
qed_mcp_resc_allocation_msg(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       struct qed_resc_alloc_in_params *p_in_params,
       struct qed_resc_alloc_out_params *p_out_params)
{
 struct qed_mcp_mb_params mb_params;
 struct resource_info mfw_resc_info;
 int rc;

 memset(&mfw_resc_info, 0, sizeof(mfw_resc_info));

 mfw_resc_info.res_id = qed_mcp_get_mfw_res_id(p_in_params->res_id);
 if (mfw_resc_info.res_id == RESOURCE_NUM_INVALID) {
  DP_ERR(p_hwfn,
         "Failed to match resource %d [%s] with the MFW resources\n",
         p_in_params->res_id,
         qed_hw_get_resc_name(p_in_params->res_id));
  return -EINVAL;
 }

 switch (p_in_params->cmd) {
 case 128:
  mfw_resc_info.size = p_in_params->resc_max_val;

 case 129:
  break;
 default:
  DP_ERR(p_hwfn, "Unexpected resource alloc command [0x%08x]\n",
         p_in_params->cmd);
  return -EINVAL;
 }

 memset(&mb_params, 0, sizeof(mb_params));
 mb_params.cmd = p_in_params->cmd;
 mb_params.param = QED_RESC_ALLOC_VERSION;
 mb_params.p_data_src = &mfw_resc_info;
 mb_params.data_src_size = sizeof(mfw_resc_info);
 mb_params.p_data_dst = mb_params.p_data_src;
 mb_params.data_dst_size = mb_params.data_src_size;

 DP_VERBOSE(p_hwfn,
     QED_MSG_SP,
     "Resource message request: cmd 0x%08x, res_id %d [%s], hsi_version %d.%d, val 0x%x\n",
     p_in_params->cmd,
     p_in_params->res_id,
     qed_hw_get_resc_name(p_in_params->res_id),
     QED_MFW_GET_FIELD(mb_params.param,
         DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR),
     QED_MFW_GET_FIELD(mb_params.param,
         DRV_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR),
     p_in_params->resc_max_val);

 rc = qed_mcp_cmd_and_union(p_hwfn, p_ptt, &mb_params);
 if (rc)
  return rc;

 p_out_params->mcp_resp = mb_params.mcp_resp;
 p_out_params->mcp_param = mb_params.mcp_param;
 p_out_params->resc_num = mfw_resc_info.size;
 p_out_params->resc_start = mfw_resc_info.offset;
 p_out_params->vf_resc_num = mfw_resc_info.vf_size;
 p_out_params->vf_resc_start = mfw_resc_info.vf_offset;
 p_out_params->flags = mfw_resc_info.flags;

 DP_VERBOSE(p_hwfn,
     QED_MSG_SP,
     "Resource message response: mfw_hsi_version %d.%d, num 0x%x, start 0x%x, vf_num 0x%x, vf_start 0x%x, flags 0x%08x\n",
     QED_MFW_GET_FIELD(p_out_params->mcp_param,
         FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MAJOR),
     QED_MFW_GET_FIELD(p_out_params->mcp_param,
         FW_MB_PARAM_RESOURCE_ALLOC_VERSION_MINOR),
     p_out_params->resc_num,
     p_out_params->resc_start,
     p_out_params->vf_resc_num,
     p_out_params->vf_resc_start, p_out_params->flags);

 return 0;
}
