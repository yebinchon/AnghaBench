
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct iwl_mvm_vif {scalar_t__ id; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_mac_beacon_cmd_v7 {void* ecsa_offset; void* csa_offset; int tim_size; int tim_idx; void* template_id; int tx; } ;
struct ieee80211_vif {scalar_t__ type; } ;
typedef int beacon_cmd ;


 scalar_t__ NL80211_IFTYPE_AP ;
 int WLAN_EID_CHANNEL_SWITCH ;
 int WLAN_EID_EXT_CHANSWITCH_ANN ;
 void* cpu_to_le32 (int ) ;
 int iwl_mvm_find_ie_offset (int ,int ,int ) ;
 int iwl_mvm_mac_ctxt_send_beacon_cmd (struct iwl_mvm*,struct sk_buff*,struct iwl_mac_beacon_cmd_v7*,int) ;
 int iwl_mvm_mac_ctxt_set_tim (struct iwl_mvm*,int *,int *,int ,int ) ;
 int iwl_mvm_mac_ctxt_set_tx (struct iwl_mvm*,struct ieee80211_vif*,struct sk_buff*,int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static int iwl_mvm_mac_ctxt_send_beacon_v7(struct iwl_mvm *mvm,
        struct ieee80211_vif *vif,
        struct sk_buff *beacon)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mac_beacon_cmd_v7 beacon_cmd = {};

 iwl_mvm_mac_ctxt_set_tx(mvm, vif, beacon, &beacon_cmd.tx);

 beacon_cmd.template_id = cpu_to_le32((u32)mvmvif->id);

 if (vif->type == NL80211_IFTYPE_AP)
  iwl_mvm_mac_ctxt_set_tim(mvm, &beacon_cmd.tim_idx,
      &beacon_cmd.tim_size,
      beacon->data, beacon->len);

 beacon_cmd.csa_offset =
  cpu_to_le32(iwl_mvm_find_ie_offset(beacon->data,
         WLAN_EID_CHANNEL_SWITCH,
         beacon->len));
 beacon_cmd.ecsa_offset =
  cpu_to_le32(iwl_mvm_find_ie_offset(beacon->data,
         WLAN_EID_EXT_CHANSWITCH_ANN,
         beacon->len));

 return iwl_mvm_mac_ctxt_send_beacon_cmd(mvm, beacon, &beacon_cmd,
      sizeof(beacon_cmd));
}
