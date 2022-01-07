
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_tx_cmd {int rate_n_flags; int tx_flags; scalar_t__ initial_rate_index; int data_retry_limit; int rts_retry_limit; } ;
struct iwl_mvm_sta {scalar_t__ sta_state; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
typedef int __le16 ;


 scalar_t__ IEEE80211_STA_AUTHORIZED ;
 int IWL_BAR_DFAULT_RETRY_LIMIT ;
 int IWL_DEFAULT_TX_RETRY ;
 int IWL_MGMT_DFAULT_RETRY_LIMIT ;
 int IWL_RTS_DFAULT_RETRY_LIMIT ;
 int TX_CMD_FLG_ACK ;
 int TX_CMD_FLG_BAR ;
 int TX_CMD_FLG_STA_RATE ;
 int cpu_to_le32 (int) ;
 scalar_t__ ieee80211_is_back_req (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 int iwl_mvm_get_tx_rate_n_flags (struct iwl_mvm*,struct ieee80211_tx_info*,struct ieee80211_sta*,int ) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int min (int ,int ) ;

void iwl_mvm_set_tx_cmd_rate(struct iwl_mvm *mvm, struct iwl_tx_cmd *tx_cmd,
       struct ieee80211_tx_info *info,
       struct ieee80211_sta *sta, __le16 fc)
{

 tx_cmd->rts_retry_limit = IWL_RTS_DFAULT_RETRY_LIMIT;


 if (ieee80211_is_probe_resp(fc)) {
  tx_cmd->data_retry_limit = IWL_MGMT_DFAULT_RETRY_LIMIT;
  tx_cmd->rts_retry_limit =
   min(tx_cmd->data_retry_limit, tx_cmd->rts_retry_limit);
 } else if (ieee80211_is_back_req(fc)) {
  tx_cmd->data_retry_limit = IWL_BAR_DFAULT_RETRY_LIMIT;
 } else {
  tx_cmd->data_retry_limit = IWL_DEFAULT_TX_RETRY;
 }






 if (ieee80211_is_data(fc) && sta) {
  struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);

  if (mvmsta->sta_state >= IEEE80211_STA_AUTHORIZED) {
   tx_cmd->initial_rate_index = 0;
   tx_cmd->tx_flags |= cpu_to_le32(TX_CMD_FLG_STA_RATE);
   return;
  }
 } else if (ieee80211_is_back_req(fc)) {
  tx_cmd->tx_flags |=
   cpu_to_le32(TX_CMD_FLG_ACK | TX_CMD_FLG_BAR);
 }


 tx_cmd->rate_n_flags =
  cpu_to_le32(iwl_mvm_get_tx_rate_n_flags(mvm, info, sta, fc));
}
