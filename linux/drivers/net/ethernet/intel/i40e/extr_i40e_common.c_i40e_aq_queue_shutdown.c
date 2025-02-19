
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_hw {int dummy; } ;
struct i40e_aqc_queue_shutdown {int driver_unloading; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef int i40e_status ;


 int I40E_AQ_DRIVER_UNLOADING ;
 int cpu_to_le32 (int ) ;
 int i40e_aqc_opc_queue_shutdown ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,int *,int ,int *) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

i40e_status i40e_aq_queue_shutdown(struct i40e_hw *hw,
          bool unloading)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_queue_shutdown *cmd =
  (struct i40e_aqc_queue_shutdown *)&desc.params.raw;
 i40e_status status;

 i40e_fill_default_direct_cmd_desc(&desc,
       i40e_aqc_opc_queue_shutdown);

 if (unloading)
  cmd->driver_unloading = cpu_to_le32(I40E_AQ_DRIVER_UNLOADING);
 status = i40e_asq_send_command(hw, &desc, ((void*)0), 0, ((void*)0));

 return status;
}
