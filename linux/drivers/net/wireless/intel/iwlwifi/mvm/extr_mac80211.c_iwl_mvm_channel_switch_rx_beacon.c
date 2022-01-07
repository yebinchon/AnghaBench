
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {scalar_t__ csa_count; int csa_misbehave; int id; int color; } ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct iwl_chan_switch_te_cmd {scalar_t__ cs_count; scalar_t__ cs_mode; int tsf; int action; int mac_id; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel_switch {scalar_t__ count; scalar_t__ block_tx; int timestamp; } ;
typedef int cmd ;
struct TYPE_2__ {int ucode_capa; } ;


 int CHANNEL_SWITCH_TIME_EVENT_CMD ;
 int CMD_ASYNC ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_MODIFY ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*,int ) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_UCODE_TLV_CAPA_CS_MODIFY ;
 int MAC_CONF_GROUP ;
 int WARN_ON (int ) ;
 int WIDE_ID (int ,int ) ;
 int cpu_to_le32 (int ) ;
 int fw_has_capa (int *,int ) ;
 int ieee80211_chswitch_done (struct ieee80211_vif*,int) ;
 int iwl_mvm_abort_channel_switch (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_chan_switch_te_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_channel_switch_rx_beacon(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif,
          struct ieee80211_channel_switch *chsw)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_chan_switch_te_cmd cmd = {
  .mac_id = cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id,
         mvmvif->color)),
  .action = cpu_to_le32(FW_CTXT_ACTION_MODIFY),
  .tsf = cpu_to_le32(chsw->timestamp),
  .cs_count = chsw->count,
  .cs_mode = chsw->block_tx,
 };

 if (!fw_has_capa(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_CS_MODIFY))
  return;

 if (chsw->count >= mvmvif->csa_count && chsw->block_tx) {
  if (mvmvif->csa_misbehave) {

   iwl_mvm_abort_channel_switch(hw, vif);
   ieee80211_chswitch_done(vif, 0);
   mvmvif->csa_misbehave = 0;
   return;
  }
  mvmvif->csa_misbehave = 1;
 }
 mvmvif->csa_count = chsw->count;

 IWL_DEBUG_MAC80211(mvm, "Modify CSA on mac %d\n", mvmvif->id);

 WARN_ON(iwl_mvm_send_cmd_pdu(mvm,
         WIDE_ID(MAC_CONF_GROUP,
          CHANNEL_SWITCH_TIME_EVENT_CMD),
         CMD_ASYNC, sizeof(cmd), &cmd));
}
