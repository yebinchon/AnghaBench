
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_clear_pxe {int rx_cnt; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef int i40e_status ;


 int I40E_GLLAN_RCTL_0 ;
 int i40e_aqc_opc_clear_pxe_mode ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

i40e_status i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
    struct i40e_asq_cmd_details *cmd_details)
{
 i40e_status status;
 struct i40e_aq_desc desc;
 struct i40e_aqc_clear_pxe *cmd =
  (struct i40e_aqc_clear_pxe *)&desc.params.raw;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_clear_pxe_mode);

 cmd->rx_cnt = 0x2;

 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, cmd_details);

 wr32(hw, I40E_GLLAN_RCTL_0, 0x1);

 return status;
}
