
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_mvm_vif {int id; } ;
struct iwl_mvm_mac_iface_iterator_data {int found_vif; int available_mac_ids; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int dummy; } ;


 int __clear_bit (int ,int ) ;
 int iwl_mvm_mac_tsf_id_iter (void*,int *,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_mac_iface_iterator(void *_data, u8 *mac,
           struct ieee80211_vif *vif)
{
 struct iwl_mvm_mac_iface_iterator_data *data = _data;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);


 if (vif == data->vif) {
  data->found_vif = 1;
  return;
 }







 __clear_bit(mvmvif->id, data->available_mac_ids);


 iwl_mvm_mac_tsf_id_iter(_data, mac, vif);
}
