
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_mvm_vif {int csa_countdown; int time_event_data; } ;
struct iwl_mvm {int csa_vif; } ;
struct TYPE_2__ {int beacon_int; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; scalar_t__ p2p; } ;


 int IWL_MVM_CHANNEL_SWITCH_MARGIN ;
 int IWL_MVM_CHANNEL_SWITCH_TIME_GO ;
 int RCU_INIT_POINTER (int ,int *) ;
 int ieee80211_csa_finish (struct ieee80211_vif*) ;
 int ieee80211_csa_is_complete (struct ieee80211_vif*) ;
 int ieee80211_csa_update_counter (struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_beacon_changed (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_schedule_csa_period (struct iwl_mvm*,struct ieee80211_vif*,int,int) ;
 int iwl_mvm_te_scheduled (int *) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_csa_count_down(struct iwl_mvm *mvm,
       struct ieee80211_vif *csa_vif, u32 gp2,
       bool tx_success)
{
 struct iwl_mvm_vif *mvmvif =
   iwl_mvm_vif_from_mac80211(csa_vif);


 if (!tx_success && !mvmvif->csa_countdown)
  return;

 mvmvif->csa_countdown = 1;

 if (!ieee80211_csa_is_complete(csa_vif)) {
  int c = ieee80211_csa_update_counter(csa_vif);

  iwl_mvm_mac_ctxt_beacon_changed(mvm, csa_vif);
  if (csa_vif->p2p &&
      !iwl_mvm_te_scheduled(&mvmvif->time_event_data) && gp2 &&
      tx_success) {
   u32 rel_time = (c + 1) *
           csa_vif->bss_conf.beacon_int -
           IWL_MVM_CHANNEL_SWITCH_TIME_GO;
   u32 apply_time = gp2 + rel_time * 1024;

   iwl_mvm_schedule_csa_period(mvm, csa_vif,
      IWL_MVM_CHANNEL_SWITCH_TIME_GO -
      IWL_MVM_CHANNEL_SWITCH_MARGIN,
      apply_time);
  }
 } else if (!iwl_mvm_te_scheduled(&mvmvif->time_event_data)) {

  ieee80211_csa_finish(csa_vif);
  RCU_INIT_POINTER(mvm->csa_vif, ((void*)0));
 }
}
