
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_asq_cmd_details {int dummy; } ;
struct i40e_aqc_mac_address_read_data {int dummy; } ;
struct i40e_aqc_mac_address_read {int command_flags; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int flags; TYPE_1__ params; } ;
typedef int i40e_status ;


 int I40E_AQ_FLAG_BUF ;
 int cpu_to_le16 (int ) ;
 int i40e_aqc_opc_mac_address_read ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,struct i40e_aqc_mac_address_read_data*,int,struct i40e_asq_cmd_details*) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static i40e_status i40e_aq_mac_address_read(struct i40e_hw *hw,
       u16 *flags,
       struct i40e_aqc_mac_address_read_data *addrs,
       struct i40e_asq_cmd_details *cmd_details)
{
 struct i40e_aq_desc desc;
 struct i40e_aqc_mac_address_read *cmd_data =
  (struct i40e_aqc_mac_address_read *)&desc.params.raw;
 i40e_status status;

 i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_mac_address_read);
 desc.flags |= cpu_to_le16(I40E_AQ_FLAG_BUF);

 status = i40e_asq_send_command(hw, &desc, addrs,
           sizeof(*addrs), cmd_details);
 *flags = le16_to_cpu(cmd_data->command_flags);

 return status;
}
