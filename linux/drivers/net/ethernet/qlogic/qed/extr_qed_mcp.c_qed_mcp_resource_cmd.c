
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_INFO (struct qed_hwfn*,char*) ;
 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__,int ) ;
 int DRV_MSG_CODE_RESOURCE_CMD ;
 int EINVAL ;
 scalar_t__ FW_MSG_CODE_UNSUPPORTED ;
 int QED_MFW_GET_FIELD (scalar_t__,int ) ;
 int RESOURCE_CMD_REQ_OPCODE ;
 scalar_t__ RESOURCE_OPCODE_UNKNOWN_CMD ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int qed_mcp_resource_cmd(struct qed_hwfn *p_hwfn,
    struct qed_ptt *p_ptt,
    u32 param, u32 *p_mcp_resp, u32 *p_mcp_param)
{
 int rc;

 rc = qed_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_RESOURCE_CMD, param,
    p_mcp_resp, p_mcp_param);
 if (rc)
  return rc;

 if (*p_mcp_resp == FW_MSG_CODE_UNSUPPORTED) {
  DP_INFO(p_hwfn,
   "The resource command is unsupported by the MFW\n");
  return -EINVAL;
 }

 if (*p_mcp_param == RESOURCE_OPCODE_UNKNOWN_CMD) {
  u8 opcode = QED_MFW_GET_FIELD(param, RESOURCE_CMD_REQ_OPCODE);

  DP_NOTICE(p_hwfn,
     "The resource command is unknown to the MFW [param 0x%08x, opcode %d]\n",
     param, opcode);
  return -EINVAL;
 }

 return rc;
}
