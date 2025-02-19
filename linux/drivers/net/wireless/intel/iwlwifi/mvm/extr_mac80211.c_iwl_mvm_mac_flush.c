
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_vif {int ap_sta_id; } ;
struct iwl_mvm_sta {int tfd_queue_msk; struct ieee80211_vif* vif; } ;
struct iwl_mvm {int trans; int mutex; int * fw_id_to_mac_id; int add_stream_wk; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int tdls; } ;
struct ieee80211_hw {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR_OR_NULL (struct ieee80211_sta*) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WARN_ON (int) ;
 int flush_work (int *) ;
 int iwl_mvm_flush_no_vif (struct iwl_mvm*,int ,int) ;
 scalar_t__ iwl_mvm_flush_sta (struct iwl_mvm*,struct iwl_mvm_sta*,int,int ) ;
 scalar_t__ iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int iwl_mvm_wait_sta_queues_empty (struct iwl_mvm*,struct iwl_mvm_sta*) ;
 int iwl_trans_wait_tx_queues_empty (int ,int ) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static void iwl_mvm_mac_flush(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif, u32 queues, bool drop)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif;
 struct iwl_mvm_sta *mvmsta;
 struct ieee80211_sta *sta;
 int i;
 u32 msk = 0;

 if (!vif) {
  iwl_mvm_flush_no_vif(mvm, queues, drop);
  return;
 }

 if (vif->type != NL80211_IFTYPE_STATION)
  return;


 flush_work(&mvm->add_stream_wk);

 mutex_lock(&mvm->mutex);
 mvmvif = iwl_mvm_vif_from_mac80211(vif);


 for (i = 0; i < ARRAY_SIZE(mvm->fw_id_to_mac_id); i++) {
  sta = rcu_dereference_protected(mvm->fw_id_to_mac_id[i],
      lockdep_is_held(&mvm->mutex));
  if (IS_ERR_OR_NULL(sta))
   continue;

  mvmsta = iwl_mvm_sta_from_mac80211(sta);
  if (mvmsta->vif != vif)
   continue;


  WARN_ON(i != mvmvif->ap_sta_id && !sta->tdls);

  if (drop) {
   if (iwl_mvm_flush_sta(mvm, mvmsta, 0, 0))
    IWL_ERR(mvm, "flush request fail\n");
  } else {
   msk |= mvmsta->tfd_queue_msk;
   if (iwl_mvm_has_new_tx_api(mvm))
    iwl_mvm_wait_sta_queues_empty(mvm, mvmsta);
  }
 }

 mutex_unlock(&mvm->mutex);




 if (!drop && !iwl_mvm_has_new_tx_api(mvm))
  iwl_trans_wait_tx_queues_empty(mvm->trans, msk);
}
