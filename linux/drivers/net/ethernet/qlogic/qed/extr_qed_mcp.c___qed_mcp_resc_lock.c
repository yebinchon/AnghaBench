
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_resc_lock_params {int timeout; int resource; int b_granted; void* owner; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int ,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int,int,...) ;
 int EINVAL ;


 void* QED_MFW_GET_FIELD (int ,int ) ;
 int QED_MFW_SET_FIELD (int ,int ,int) ;
 int QED_MSG_SP ;
 int RESOURCE_CMD_REQ_AGE ;
 int RESOURCE_CMD_REQ_OPCODE ;
 int RESOURCE_CMD_REQ_RESC ;
 int RESOURCE_CMD_RSP_OPCODE ;
 int RESOURCE_CMD_RSP_OWNER ;


 int RESOURCE_OPCODE_REQ ;
 int RESOURCE_OPCODE_REQ_WO_AGING ;
 int RESOURCE_OPCODE_REQ_W_AGING ;
 int qed_mcp_resource_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int *,int *) ;

__attribute__((used)) static int
__qed_mcp_resc_lock(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt,
      struct qed_resc_lock_params *p_params)
{
 u32 param = 0, mcp_resp, mcp_param;
 u8 opcode;
 int rc;

 switch (p_params->timeout) {
 case 131:
  opcode = RESOURCE_OPCODE_REQ;
  p_params->timeout = 0;
  break;
 case 130:
  opcode = RESOURCE_OPCODE_REQ_WO_AGING;
  p_params->timeout = 0;
  break;
 default:
  opcode = RESOURCE_OPCODE_REQ_W_AGING;
  break;
 }

 QED_MFW_SET_FIELD(param, RESOURCE_CMD_REQ_RESC, p_params->resource);
 QED_MFW_SET_FIELD(param, RESOURCE_CMD_REQ_OPCODE, opcode);
 QED_MFW_SET_FIELD(param, RESOURCE_CMD_REQ_AGE, p_params->timeout);

 DP_VERBOSE(p_hwfn,
     QED_MSG_SP,
     "Resource lock request: param 0x%08x [age %d, opcode %d, resource %d]\n",
     param, p_params->timeout, opcode, p_params->resource);


 rc = qed_mcp_resource_cmd(p_hwfn, p_ptt, param, &mcp_resp, &mcp_param);
 if (rc)
  return rc;


 p_params->owner = QED_MFW_GET_FIELD(mcp_param, RESOURCE_CMD_RSP_OWNER);
 opcode = QED_MFW_GET_FIELD(mcp_param, RESOURCE_CMD_RSP_OPCODE);

 DP_VERBOSE(p_hwfn,
     QED_MSG_SP,
     "Resource lock response: mcp_param 0x%08x [opcode %d, owner %d]\n",
     mcp_param, opcode, p_params->owner);

 switch (opcode) {
 case 128:
  p_params->b_granted = 1;
  break;
 case 129:
  p_params->b_granted = 0;
  break;
 default:
  DP_NOTICE(p_hwfn,
     "Unexpected opcode in resource lock response [mcp_param 0x%08x, opcode %d]\n",
     mcp_param, opcode);
  return -EINVAL;
 }

 return 0;
}
