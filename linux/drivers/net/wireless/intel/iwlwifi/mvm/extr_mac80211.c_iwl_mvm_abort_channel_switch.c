
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_vif {int id; int color; } ;
struct iwl_mvm {int mutex; } ;
struct iwl_chan_switch_te_cmd {int action; int mac_id; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef int cmd ;


 int CHANNEL_SWITCH_TIME_EVENT_CMD ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int FW_CTXT_ACTION_REMOVE ;
 int IWL_DEBUG_MAC80211 (struct iwl_mvm*,char*,int ) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int MAC_CONF_GROUP ;
 int WARN_ON (int ) ;
 int WIDE_ID (int ,int ) ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_post_channel_switch (struct ieee80211_hw*,struct ieee80211_vif*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_chan_switch_te_cmd*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_abort_channel_switch(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_chan_switch_te_cmd cmd = {
  .mac_id = cpu_to_le32(FW_CMD_ID_AND_COLOR(mvmvif->id,
         mvmvif->color)),
  .action = cpu_to_le32(FW_CTXT_ACTION_REMOVE),
 };

 IWL_DEBUG_MAC80211(mvm, "Abort CSA on mac %d\n", mvmvif->id);

 mutex_lock(&mvm->mutex);
 WARN_ON(iwl_mvm_send_cmd_pdu(mvm,
         WIDE_ID(MAC_CONF_GROUP,
          CHANNEL_SWITCH_TIME_EVENT_CMD),
         0, sizeof(cmd), &cmd));
 mutex_unlock(&mvm->mutex);

 WARN_ON(iwl_mvm_post_channel_switch(hw, vif));
}
