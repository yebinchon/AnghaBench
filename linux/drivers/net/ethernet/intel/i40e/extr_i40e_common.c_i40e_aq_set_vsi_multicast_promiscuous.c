
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_set_vsi_promiscuous_modes {void* seid; void* valid_flags; void* promiscuous_flags; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef int i40e_status ;


 int I40E_AQC_SET_VSI_PROMISC_MULTICAST ;
 void* cpu_to_le16 (int ) ;
 int i40e_aqc_opc_set_vsi_promiscuous_modes ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

i40e_status i40e_aq_set_vsi_multicast_promiscuous(struct i40e_hw *hw,
    u16 seid, bool set, struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_set_vsi_promiscuous_modes *cmd =
  (struct i40e_aqc_set_vsi_promiscuous_modes *)&desc.params.raw;
 i40e_status status;
 u16 flags = 0;

 i40e_fill_default_direct_cmd_desc(&desc,
     i40e_aqc_opc_set_vsi_promiscuous_modes);

 if (set)
  flags |= I40E_AQC_SET_VSI_PROMISC_MULTICAST;

 cmd->promiscuous_flags = cpu_to_le16(flags);

 cmd->valid_flags = cpu_to_le16(I40E_AQC_SET_VSI_PROMISC_MULTICAST);

 cmd->seid = cpu_to_le16(seid);
 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 return status;
}
