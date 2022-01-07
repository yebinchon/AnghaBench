
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {int ps_disabled; scalar_t__ ext_clock_valid; scalar_t__ disable_power_off; scalar_t__ disable_power_off_d3; TYPE_1__ fwrt; } ;
struct iwl_device_power_cmd {int flags; } ;
typedef int cmd ;
struct TYPE_4__ {scalar_t__ power_scheme; } ;


 int DEVICE_POWER_FLAGS_32K_CLK_VALID_MSK ;
 int DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK ;
 int IWL_DEBUG_POWER (struct iwl_mvm*,char*,int ) ;
 scalar_t__ IWL_POWER_SCHEME_CAM ;
 scalar_t__ IWL_UCODE_WOWLAN ;
 int POWER_TABLE_CMD ;
 int cpu_to_le16 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_device_power_cmd*) ;
 TYPE_2__ iwlmvm_mod_params ;

int iwl_mvm_power_update_device(struct iwl_mvm *mvm)
{
 struct iwl_device_power_cmd cmd = {
  .flags = 0,
 };

 if (iwlmvm_mod_params.power_scheme == IWL_POWER_SCHEME_CAM)
  mvm->ps_disabled = 1;

 if (!mvm->ps_disabled)
  cmd.flags |= cpu_to_le16(DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK);







 if (mvm->ext_clock_valid)
  cmd.flags |= cpu_to_le16(DEVICE_POWER_FLAGS_32K_CLK_VALID_MSK);

 IWL_DEBUG_POWER(mvm,
   "Sending device power command with flags = 0x%X\n",
   cmd.flags);

 return iwl_mvm_send_cmd_pdu(mvm, POWER_TABLE_CMD, 0, sizeof(cmd),
        &cmd);
}
