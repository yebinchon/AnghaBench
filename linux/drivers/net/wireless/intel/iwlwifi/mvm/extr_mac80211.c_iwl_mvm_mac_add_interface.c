
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_beacons; int accu_num_beacons; } ;
struct iwl_mvm_vif {size_t id; int * phy_ctxt; int csa_work; int features; int mcast_sta; TYPE_1__ beacon_stats; int probe_resp_data; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int monitor_on; int mutex; int vif_count; struct iwl_mvm_vif* bf_allowed_vif; struct ieee80211_vif* p2p_device_vif; int * vif_id_to_mac; int status; } ;
struct ieee80211_vif {int driver_flags; int type; int p2p; } ;
struct ieee80211_hw {int netdev_features; } ;


 int ENOSPC ;
 int IEEE80211_VIF_BEACON_FILTER ;
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;
 int IWL_STA_MULTICAST ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MONITOR ;
 int NL80211_IFTYPE_P2P_DEVICE ;
 int NL80211_IFTYPE_STATION ;
 int RCU_INIT_POINTER (int ,int *) ;
 int iwl_mvm_add_p2p_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_alloc_bcast_sta (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_allocate_int_sta (struct iwl_mvm*,int *,int ,int ,int ) ;
 int iwl_mvm_binding_add_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_binding_remove_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_channel_switch_disconnect_wk ;
 int iwl_mvm_disable_beacon_filter (struct iwl_mvm*,struct ieee80211_vif*,int ) ;
 int * iwl_mvm_get_free_phy_ctxt (struct iwl_mvm*) ;
 int iwl_mvm_mac_ctxt_add (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_init (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_mac_ctxt_remove (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_phy_ctxt_ref (struct iwl_mvm*,int *) ;
 int iwl_mvm_phy_ctxt_unref (struct iwl_mvm*,int *) ;
 int iwl_mvm_power_update_mac (struct iwl_mvm*) ;
 int iwl_mvm_tcm_add_vif (struct iwl_mvm*,struct ieee80211_vif*) ;
 int iwl_mvm_vif_dbgfs_register (struct iwl_mvm*,struct ieee80211_vif*) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct ieee80211_vif*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int iwl_mvm_mac_add_interface(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 mvmvif->mvm = mvm;
 RCU_INIT_POINTER(mvmvif->probe_resp_data, ((void*)0));







 mutex_lock(&mvm->mutex);


 if (test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
  mvmvif->beacon_stats.accu_num_beacons +=
   mvmvif->beacon_stats.num_beacons;


 ret = iwl_mvm_mac_ctxt_init(mvm, vif);
 if (ret)
  goto out_unlock;

 rcu_assign_pointer(mvm->vif_id_to_mac[mvmvif->id], vif);


 if (vif->type != NL80211_IFTYPE_P2P_DEVICE)
  mvm->vif_count++;
 if (vif->type == NL80211_IFTYPE_AP ||
     vif->type == NL80211_IFTYPE_ADHOC) {
  ret = iwl_mvm_alloc_bcast_sta(mvm, vif);
  if (ret) {
   IWL_ERR(mvm, "Failed to allocate bcast sta\n");
   goto out_release;
  }





  ret = iwl_mvm_allocate_int_sta(mvm, &mvmvif->mcast_sta,
            0, vif->type,
            IWL_STA_MULTICAST);
  if (ret)
   goto out_release;

  iwl_mvm_vif_dbgfs_register(mvm, vif);
  goto out_unlock;
 }

 mvmvif->features |= hw->netdev_features;

 ret = iwl_mvm_mac_ctxt_add(mvm, vif);
 if (ret)
  goto out_release;

 ret = iwl_mvm_power_update_mac(mvm);
 if (ret)
  goto out_remove_mac;


 ret = iwl_mvm_disable_beacon_filter(mvm, vif, 0);
 if (ret)
  goto out_remove_mac;

 if (!mvm->bf_allowed_vif &&
     vif->type == NL80211_IFTYPE_STATION && !vif->p2p) {
  mvm->bf_allowed_vif = mvmvif;
  vif->driver_flags |= IEEE80211_VIF_BEACON_FILTER |
         IEEE80211_VIF_SUPPORTS_CQM_RSSI;
 }






 if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {

  mvmvif->phy_ctxt = iwl_mvm_get_free_phy_ctxt(mvm);
  if (!mvmvif->phy_ctxt) {
   ret = -ENOSPC;
   goto out_free_bf;
  }

  iwl_mvm_phy_ctxt_ref(mvm, mvmvif->phy_ctxt);
  ret = iwl_mvm_binding_add_vif(mvm, vif);
  if (ret)
   goto out_unref_phy;

  ret = iwl_mvm_add_p2p_bcast_sta(mvm, vif);
  if (ret)
   goto out_unbind;



  mvm->p2p_device_vif = vif;
 }

 iwl_mvm_tcm_add_vif(mvm, vif);
 INIT_DELAYED_WORK(&mvmvif->csa_work,
     iwl_mvm_channel_switch_disconnect_wk);

 if (vif->type == NL80211_IFTYPE_MONITOR)
  mvm->monitor_on = 1;

 iwl_mvm_vif_dbgfs_register(mvm, vif);
 goto out_unlock;

 out_unbind:
 iwl_mvm_binding_remove_vif(mvm, vif);
 out_unref_phy:
 iwl_mvm_phy_ctxt_unref(mvm, mvmvif->phy_ctxt);
 out_free_bf:
 if (mvm->bf_allowed_vif == mvmvif) {
  mvm->bf_allowed_vif = ((void*)0);
  vif->driver_flags &= ~(IEEE80211_VIF_BEACON_FILTER |
           IEEE80211_VIF_SUPPORTS_CQM_RSSI);
 }
 out_remove_mac:
 mvmvif->phy_ctxt = ((void*)0);
 iwl_mvm_mac_ctxt_remove(mvm, vif);
 out_release:
 if (vif->type != NL80211_IFTYPE_P2P_DEVICE)
  mvm->vif_count--;
 out_unlock:
 mutex_unlock(&mvm->mutex);

 return ret;
}
