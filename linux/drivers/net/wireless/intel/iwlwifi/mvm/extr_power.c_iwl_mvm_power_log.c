
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int dummy; } ;
struct iwl_mac_power_cmd {int flags; int keep_alive_seconds; int uapsd_max_sp; int uapsd_ac_flags; int qndp_tid; int tx_data_timeout_uapsd; int rx_data_timeout_uapsd; int lprx_rssi_threshold; int skip_dtim_periods; int tx_data_timeout; int rx_data_timeout; int id_and_color; } ;
struct TYPE_2__ {int power_scheme; } ;


 int IWL_DEBUG_POWER (struct iwl_mvm*,char*,...) ;
 int POWER_FLAGS_ADVANCE_PM_ENA_MSK ;
 int POWER_FLAGS_LPRX_ENA_MSK ;
 int POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK ;
 int POWER_FLAGS_SKIP_OVER_DTIM_MSK ;
 int cpu_to_le16 (int ) ;
 TYPE_1__ iwlmvm_mod_params ;
 int le16_to_cpu (int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iwl_mvm_power_log(struct iwl_mvm *mvm,
         struct iwl_mac_power_cmd *cmd)
{
 IWL_DEBUG_POWER(mvm,
   "Sending power table command on mac id 0x%X for power level %d, flags = 0x%X\n",
   cmd->id_and_color, iwlmvm_mod_params.power_scheme,
   le16_to_cpu(cmd->flags));
 IWL_DEBUG_POWER(mvm, "Keep alive = %u sec\n",
   le16_to_cpu(cmd->keep_alive_seconds));

 if (!(cmd->flags & cpu_to_le16(POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK))) {
  IWL_DEBUG_POWER(mvm, "Disable power management\n");
  return;
 }

 IWL_DEBUG_POWER(mvm, "Rx timeout = %u usec\n",
   le32_to_cpu(cmd->rx_data_timeout));
 IWL_DEBUG_POWER(mvm, "Tx timeout = %u usec\n",
   le32_to_cpu(cmd->tx_data_timeout));
 if (cmd->flags & cpu_to_le16(POWER_FLAGS_SKIP_OVER_DTIM_MSK))
  IWL_DEBUG_POWER(mvm, "DTIM periods to skip = %u\n",
    cmd->skip_dtim_periods);
 if (cmd->flags & cpu_to_le16(POWER_FLAGS_LPRX_ENA_MSK))
  IWL_DEBUG_POWER(mvm, "LP RX RSSI threshold = %u\n",
    cmd->lprx_rssi_threshold);
 if (cmd->flags & cpu_to_le16(POWER_FLAGS_ADVANCE_PM_ENA_MSK)) {
  IWL_DEBUG_POWER(mvm, "uAPSD enabled\n");
  IWL_DEBUG_POWER(mvm, "Rx timeout (uAPSD) = %u usec\n",
    le32_to_cpu(cmd->rx_data_timeout_uapsd));
  IWL_DEBUG_POWER(mvm, "Tx timeout (uAPSD) = %u usec\n",
    le32_to_cpu(cmd->tx_data_timeout_uapsd));
  IWL_DEBUG_POWER(mvm, "QNDP TID = %d\n", cmd->qndp_tid);
  IWL_DEBUG_POWER(mvm, "ACs flags = 0x%x\n", cmd->uapsd_ac_flags);
  IWL_DEBUG_POWER(mvm, "Max SP = %d\n", cmd->uapsd_max_sp);
 }
}
