
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_resc_unlock_params {int resource; int b_released; scalar_t__ b_force; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_INFO (struct qed_hwfn*,char*,int) ;
 int DP_NOTICE (struct qed_hwfn*,char*,int ,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int,...) ;
 int EINVAL ;
 int QED_MFW_GET_FIELD (int ,int ) ;
 int QED_MFW_SET_FIELD (int ,int ,int) ;
 int QED_MSG_SP ;
 int RESOURCE_CMD_REQ_OPCODE ;
 int RESOURCE_CMD_REQ_RESC ;
 int RESOURCE_CMD_RSP_OPCODE ;
 int RESOURCE_OPCODE_FORCE_RELEASE ;
 int RESOURCE_OPCODE_RELEASE ;



 int qed_mcp_resource_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int *,int *) ;

int
qed_mcp_resc_unlock(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt,
      struct qed_resc_unlock_params *p_params)
{
 u32 param = 0, mcp_resp, mcp_param;
 u8 opcode;
 int rc;

 opcode = p_params->b_force ? RESOURCE_OPCODE_FORCE_RELEASE
       : RESOURCE_OPCODE_RELEASE;
 QED_MFW_SET_FIELD(param, RESOURCE_CMD_REQ_RESC, p_params->resource);
 QED_MFW_SET_FIELD(param, RESOURCE_CMD_REQ_OPCODE, opcode);

 DP_VERBOSE(p_hwfn, QED_MSG_SP,
     "Resource unlock request: param 0x%08x [opcode %d, resource %d]\n",
     param, opcode, p_params->resource);


 rc = qed_mcp_resource_cmd(p_hwfn, p_ptt, param, &mcp_resp, &mcp_param);
 if (rc)
  return rc;


 opcode = QED_MFW_GET_FIELD(mcp_param, RESOURCE_CMD_RSP_OPCODE);

 DP_VERBOSE(p_hwfn, QED_MSG_SP,
     "Resource unlock response: mcp_param 0x%08x [opcode %d]\n",
     mcp_param, opcode);

 switch (opcode) {
 case 129:
  DP_INFO(p_hwfn,
   "Resource unlock request for an already released resource [%d]\n",
   p_params->resource);

 case 130:
  p_params->b_released = 1;
  break;
 case 128:
  p_params->b_released = 0;
  break;
 default:
  DP_NOTICE(p_hwfn,
     "Unexpected opcode in resource unlock response [mcp_param 0x%08x, opcode %d]\n",
     mcp_param, opcode);
  return -EINVAL;
 }

 return 0;
}
