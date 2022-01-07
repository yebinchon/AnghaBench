
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ use_ps_poll; } ;
struct iwl_mvm_vif {TYPE_2__* queue_params; TYPE_1__ dbgfs_pm; } ;
struct TYPE_8__ {scalar_t__ cur_fw_img; } ;
struct iwl_mvm {TYPE_4__ fwrt; TYPE_3__* hw; } ;
struct iwl_mac_power_cmd {int flags; int uapsd_ac_flags; int qndp_tid; int snooze_interval; int snooze_window; int heavy_rx_thld_percentage; int heavy_tx_thld_percentage; int heavy_rx_thld_packets; int heavy_tx_thld_packets; void* tx_data_timeout_uapsd; void* rx_data_timeout_uapsd; int uapsd_max_sp; } ;
struct ieee80211_vif {int dummy; } ;
typedef enum ieee80211_ac_numbers { ____Placeholder_ieee80211_ac_numbers } ieee80211_ac_numbers ;
struct TYPE_7__ {int uapsd_max_sp_len; } ;
struct TYPE_6__ {int acm; int uapsd; } ;


 int BIT (int const) ;




 int IWL_MVM_PS_HEAVY_RX_THLD_PACKETS ;
 int IWL_MVM_PS_HEAVY_RX_THLD_PERCENT ;
 int IWL_MVM_PS_HEAVY_TX_THLD_PACKETS ;
 int IWL_MVM_PS_HEAVY_TX_THLD_PERCENT ;
 int IWL_MVM_PS_SNOOZE_HEAVY_RX_THLD_PACKETS ;
 int IWL_MVM_PS_SNOOZE_HEAVY_TX_THLD_PACKETS ;
 int IWL_MVM_PS_SNOOZE_INTERVAL ;
 int IWL_MVM_PS_SNOOZE_WINDOW ;
 int IWL_MVM_UAPSD_RX_DATA_TIMEOUT ;
 int IWL_MVM_UAPSD_TX_DATA_TIMEOUT ;
 int IWL_MVM_WOWLAN_PS_RX_DATA_TIMEOUT ;
 int IWL_MVM_WOWLAN_PS_SNOOZE_WINDOW ;
 int IWL_MVM_WOWLAN_PS_TX_DATA_TIMEOUT ;
 scalar_t__ IWL_UCODE_WOWLAN ;
 int POWER_FLAGS_ADVANCE_PM_ENA_MSK ;
 int POWER_FLAGS_SNOOZE_ENA_MSK ;
 int POWER_FLAGS_UAPSD_MISBEHAVING_ENA_MSK ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_power_configure_uapsd(struct iwl_mvm *mvm,
       struct ieee80211_vif *vif,
       struct iwl_mac_power_cmd *cmd)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 enum ieee80211_ac_numbers ac;
 bool tid_found = 0;
 for (ac = 128; ac <= 130; ac++) {
  if (!mvmvif->queue_params[ac].uapsd)
   continue;

  if (mvm->fwrt.cur_fw_img != IWL_UCODE_WOWLAN)
   cmd->flags |=
    cpu_to_le16(POWER_FLAGS_ADVANCE_PM_ENA_MSK);

  cmd->uapsd_ac_flags |= BIT(ac);


  if (!tid_found && !mvmvif->queue_params[ac].acm) {
   tid_found = 1;
   switch (ac) {
   case 128:
    cmd->qndp_tid = 6;
    break;
   case 129:
    cmd->qndp_tid = 5;
    break;
   case 131:
    cmd->qndp_tid = 0;
    break;
   case 130:
    cmd->qndp_tid = 1;
    break;
   }
  }
 }

 cmd->flags |= cpu_to_le16(POWER_FLAGS_UAPSD_MISBEHAVING_ENA_MSK);

 if (cmd->uapsd_ac_flags == (BIT(128) |
        BIT(129) |
        BIT(131) |
        BIT(130))) {
  cmd->flags |= cpu_to_le16(POWER_FLAGS_SNOOZE_ENA_MSK);
  cmd->snooze_interval = cpu_to_le16(IWL_MVM_PS_SNOOZE_INTERVAL);
  cmd->snooze_window =
   (mvm->fwrt.cur_fw_img == IWL_UCODE_WOWLAN) ?
    cpu_to_le16(IWL_MVM_WOWLAN_PS_SNOOZE_WINDOW) :
    cpu_to_le16(IWL_MVM_PS_SNOOZE_WINDOW);
 }

 cmd->uapsd_max_sp = mvm->hw->uapsd_max_sp_len;

 if (mvm->fwrt.cur_fw_img == IWL_UCODE_WOWLAN || cmd->flags &
     cpu_to_le16(POWER_FLAGS_SNOOZE_ENA_MSK)) {
  cmd->rx_data_timeout_uapsd =
   cpu_to_le32(IWL_MVM_WOWLAN_PS_RX_DATA_TIMEOUT);
  cmd->tx_data_timeout_uapsd =
   cpu_to_le32(IWL_MVM_WOWLAN_PS_TX_DATA_TIMEOUT);
 } else {
  cmd->rx_data_timeout_uapsd =
   cpu_to_le32(IWL_MVM_UAPSD_RX_DATA_TIMEOUT);
  cmd->tx_data_timeout_uapsd =
   cpu_to_le32(IWL_MVM_UAPSD_TX_DATA_TIMEOUT);
 }

 if (cmd->flags & cpu_to_le16(POWER_FLAGS_SNOOZE_ENA_MSK)) {
  cmd->heavy_tx_thld_packets =
   IWL_MVM_PS_SNOOZE_HEAVY_TX_THLD_PACKETS;
  cmd->heavy_rx_thld_packets =
   IWL_MVM_PS_SNOOZE_HEAVY_RX_THLD_PACKETS;
 } else {
  cmd->heavy_tx_thld_packets =
   IWL_MVM_PS_HEAVY_TX_THLD_PACKETS;
  cmd->heavy_rx_thld_packets =
   IWL_MVM_PS_HEAVY_RX_THLD_PACKETS;
 }
 cmd->heavy_tx_thld_percentage =
  IWL_MVM_PS_HEAVY_TX_THLD_PERCENT;
 cmd->heavy_rx_thld_percentage =
  IWL_MVM_PS_HEAVY_RX_THLD_PERCENT;
}
