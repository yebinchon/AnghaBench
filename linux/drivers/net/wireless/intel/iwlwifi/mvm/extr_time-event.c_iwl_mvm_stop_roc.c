
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {int dummy; } ;
struct iwl_mvm_time_event_data {TYPE_1__* vif; } ;
struct iwl_mvm {int status; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int IWL_MVM_STATUS_NEED_FLUSH_P2P ;
 int IWL_WARN (struct iwl_mvm*,char*) ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 struct iwl_mvm_time_event_data* iwl_mvm_get_roc_te (struct iwl_mvm*) ;
 int iwl_mvm_remove_aux_roc_te (struct iwl_mvm*,struct iwl_mvm_vif*,struct iwl_mvm_time_event_data*) ;
 int iwl_mvm_remove_time_event (struct iwl_mvm*,struct iwl_mvm_vif*,struct iwl_mvm_time_event_data*) ;
 int iwl_mvm_roc_finished (struct iwl_mvm*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (TYPE_1__*) ;
 int set_bit (int ,int *) ;

void iwl_mvm_stop_roc(struct iwl_mvm *mvm)
{
 struct iwl_mvm_vif *mvmvif;
 struct iwl_mvm_time_event_data *te_data;

 te_data = iwl_mvm_get_roc_te(mvm);
 if (!te_data) {
  IWL_WARN(mvm, "No remain on channel event\n");
  return;
 }

 mvmvif = iwl_mvm_vif_from_mac80211(te_data->vif);

 if (te_data->vif->type == NL80211_IFTYPE_P2P_DEVICE) {
  iwl_mvm_remove_time_event(mvm, mvmvif, te_data);
  set_bit(IWL_MVM_STATUS_NEED_FLUSH_P2P, &mvm->status);
 } else {
  iwl_mvm_remove_aux_roc_te(mvm, mvmvif, te_data);
 }

 iwl_mvm_roc_finished(mvm);
}
