
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_set_phy_debug {int command_flags; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef int i40e_status ;


 int i40e_aqc_opc_set_phy_debug ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

i40e_status i40e_aq_set_phy_debug(struct i40e_hw *hw, u8 cmd_flags,
      struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_set_phy_debug *cmd =
  (struct i40e_aqc_set_phy_debug *)&desc.params.raw;
 i40e_status status;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_set_phy_debug);

 cmd->command_flags = cmd_flags;

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 return status;
}
