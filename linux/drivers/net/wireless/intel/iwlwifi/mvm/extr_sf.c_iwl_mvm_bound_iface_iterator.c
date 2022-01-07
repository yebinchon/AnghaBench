
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_vif {int ap_sta_id; int phy_ctxt; } ;
struct iwl_mvm_active_iface_iterator_data {int sta_vif_state; int sta_vif_ap_sta_id; int num_active_macs; struct ieee80211_vif* ignore_vif; } ;
struct TYPE_2__ {scalar_t__ assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;


 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SF_FULL_ON ;
 int SF_INIT_OFF ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_bound_iface_iterator(void *_data, u8 *mac,
      struct ieee80211_vif *vif)
{
 struct iwl_mvm_active_iface_iterator_data *data = _data;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (vif == data->ignore_vif || !mvmvif->phy_ctxt ||
     vif->type == NL80211_IFTYPE_P2P_DEVICE)
  return;

 data->num_active_macs++;

 if (vif->type == NL80211_IFTYPE_STATION) {
  data->sta_vif_ap_sta_id = mvmvif->ap_sta_id;
  if (vif->bss_conf.assoc)
   data->sta_vif_state = SF_FULL_ON;
  else
   data->sta_vif_state = SF_INIT_OFF;
 }
}
