
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_vif {int ap_sta_id; } ;
struct iwl_mvm_active_iface_iterator_data {int sta_vif_state; int num_active_macs; int sta_vif_ap_sta_id; struct ieee80211_vif* ignore_vif; } ;
struct iwl_mvm {int hw; int status; } ;
struct TYPE_2__ {int dtim_period; int assoc; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_1__ bss_conf; } ;
typedef enum iwl_sf_state { ____Placeholder_iwl_sf_state } iwl_sf_state ;


 int EINVAL ;
 int IEEE80211_IFACE_ITER_NORMAL ;
 int IWL_MVM_INVALID_STA ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int SF_FULL_ON ;
 int SF_INIT_OFF ;
 int SF_UNINIT ;
 int WARN_ON (int) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_mvm_active_iface_iterator_data*) ;
 int iwl_mvm_bound_iface_iterator ;
 int iwl_mvm_sf_config (struct iwl_mvm*,int ,int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 scalar_t__ test_bit (int ,int *) ;

int iwl_mvm_sf_update(struct iwl_mvm *mvm, struct ieee80211_vif *changed_vif,
        bool remove_vif)
{
 enum iwl_sf_state new_state;
 u8 sta_id = IWL_MVM_INVALID_STA;
 struct iwl_mvm_vif *mvmvif = ((void*)0);
 struct iwl_mvm_active_iface_iterator_data data = {
  .ignore_vif = changed_vif,
  .sta_vif_state = SF_UNINIT,
  .sta_vif_ap_sta_id = IWL_MVM_INVALID_STA,
 };





 if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) ||
     (changed_vif && changed_vif->type == NL80211_IFTYPE_P2P_DEVICE))
  return 0;

 ieee80211_iterate_active_interfaces_atomic(mvm->hw,
         IEEE80211_IFACE_ITER_NORMAL,
         iwl_mvm_bound_iface_iterator,
         &data);


 if (changed_vif && !remove_vif)
  data.num_active_macs++;

 switch (data.num_active_macs) {
 case 0:

  new_state = SF_INIT_OFF;
  break;
 case 1:
  if (remove_vif) {



   new_state = data.sta_vif_state;
   sta_id = data.sta_vif_ap_sta_id;
  } else {
   if (WARN_ON(!changed_vif))
    return -EINVAL;
   if (changed_vif->type != NL80211_IFTYPE_STATION) {
    new_state = SF_UNINIT;
   } else if (changed_vif->bss_conf.assoc &&
       changed_vif->bss_conf.dtim_period) {
    mvmvif = iwl_mvm_vif_from_mac80211(changed_vif);
    sta_id = mvmvif->ap_sta_id;
    new_state = SF_FULL_ON;
   } else {
    new_state = SF_INIT_OFF;
   }
  }
  break;
 default:

  new_state = SF_UNINIT;
 }
 return iwl_mvm_sf_config(mvm, sta_id, new_state);
}
