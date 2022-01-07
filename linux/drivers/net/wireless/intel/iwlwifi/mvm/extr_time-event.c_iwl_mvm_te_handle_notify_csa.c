
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_time_event_notif {int status; } ;
struct iwl_mvm_vif {int csa_failed; int csa_work; } ;
struct iwl_mvm_time_event_data {struct ieee80211_vif* vif; } ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int type; } ;


 int IWL_DEBUG_TE (struct iwl_mvm*,char*) ;


 int WARN_ON_ONCE (int) ;
 int cancel_delayed_work (int *) ;
 int ieee80211_chswitch_done (struct ieee80211_vif*,int) ;
 int iwl_mvm_connection_loss (struct iwl_mvm*,struct ieee80211_vif*,char*) ;
 int iwl_mvm_csa_client_absent (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_csa_noa_start (struct iwl_mvm*) ;
 int iwl_mvm_te_clear_data (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void
iwl_mvm_te_handle_notify_csa(struct iwl_mvm *mvm,
        struct iwl_mvm_time_event_data *te_data,
        struct iwl_time_event_notif *notif)
{
 struct ieee80211_vif *vif = te_data->vif;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 if (!notif->status)
  IWL_DEBUG_TE(mvm, "CSA time event failed to start\n");

 switch (te_data->vif->type) {
 case 129:
  if (!notif->status)
   mvmvif->csa_failed = 1;
  iwl_mvm_csa_noa_start(mvm);
  break;
 case 128:
  if (!notif->status) {
   iwl_mvm_connection_loss(mvm, vif,
      "CSA TE failed to start");
   break;
  }
  iwl_mvm_csa_client_absent(mvm, te_data->vif);
  cancel_delayed_work(&mvmvif->csa_work);
  ieee80211_chswitch_done(te_data->vif, 1);
  break;
 default:

  WARN_ON_ONCE(1);
  break;
 }


 iwl_mvm_te_clear_data(mvm, te_data);
}
