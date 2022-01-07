
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int mailboxq; } ;
struct ice_aqc_pf_vf_msg {void* id; } ;
struct TYPE_2__ {struct ice_aqc_pf_vf_msg virt; } ;
struct ice_aq_desc {int flags; void* cookie_low; void* cookie_high; TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQ_FLAG_RD ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;
 int ice_mbx_opc_send_msg_to_vf ;
 int ice_sq_send_cmd (struct ice_hw*,int *,struct ice_aq_desc*,int *,int ,struct ice_sq_cd*) ;

enum ice_status
ice_aq_send_msg_to_vf(struct ice_hw *hw, u16 vfid, u32 v_opcode, u32 v_retval,
        u8 *msg, u16 msglen, struct ice_sq_cd *cd)
{
 struct ice_aqc_pf_vf_msg *cmd;
 struct ice_aq_desc desc;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_mbx_opc_send_msg_to_vf);

 cmd = &desc.params.virt;
 cmd->id = cpu_to_le32(vfid);

 desc.cookie_high = cpu_to_le32(v_opcode);
 desc.cookie_low = cpu_to_le32(v_retval);

 if (msglen)
  desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);

 return ice_sq_send_cmd(hw, &hw->mailboxq, &desc, msg, msglen, cd);
}
