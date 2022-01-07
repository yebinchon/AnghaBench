
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iavf_hw {int dummy; } ;
struct iavf_asq_cmd_details {int async; } ;
struct iavf_aq_desc {int datalen; int flags; void* cookie_low; void* cookie_high; } ;
typedef enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;
typedef int details ;


 int IAVF_AQ_FLAG_BUF ;
 scalar_t__ IAVF_AQ_FLAG_LB ;
 int IAVF_AQ_FLAG_RD ;
 scalar_t__ IAVF_AQ_FLAG_SI ;
 int IAVF_AQ_LARGE_BUF ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int) ;
 int iavf_aqc_opc_send_msg_to_pf ;
 int iavf_asq_send_command (struct iavf_hw*,struct iavf_aq_desc*,int *,int ,struct iavf_asq_cmd_details*) ;
 int iavf_fill_default_direct_cmd_desc (struct iavf_aq_desc*,int ) ;
 int memset (struct iavf_asq_cmd_details*,int ,int) ;

enum iavf_status iavf_aq_send_msg_to_pf(struct iavf_hw *hw,
     enum virtchnl_ops v_opcode,
     enum iavf_status v_retval,
     u8 *msg, u16 msglen,
     struct iavf_asq_cmd_details *cmd_details)
{
 struct iavf_asq_cmd_details details;
 struct iavf_aq_desc desc;
 enum iavf_status status;

 iavf_fill_default_direct_cmd_desc(&desc, iavf_aqc_opc_send_msg_to_pf);
 desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_SI);
 desc.cookie_high = cpu_to_le32(v_opcode);
 desc.cookie_low = cpu_to_le32(v_retval);
 if (msglen) {
  desc.flags |= cpu_to_le16((u16)(IAVF_AQ_FLAG_BUF
      | IAVF_AQ_FLAG_RD));
  if (msglen > IAVF_AQ_LARGE_BUF)
   desc.flags |= cpu_to_le16((u16)IAVF_AQ_FLAG_LB);
  desc.datalen = cpu_to_le16(msglen);
 }
 if (!cmd_details) {
  memset(&details, 0, sizeof(details));
  details.async = 1;
  cmd_details = &details;
 }
 status = iavf_asq_send_command(hw, &desc, msg, msglen, cmd_details);
 return status;
}
