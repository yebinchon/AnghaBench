
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* sta_id; } ;
struct TYPE_5__ {void* sta_id; } ;
struct TYPE_4__ {int id; int list; } ;
struct iwl_mvm_vif {scalar_t__ id; scalar_t__ tsf_id; int * smps_requests; void* ap_sta_id; TYPE_3__ mcast_sta; TYPE_2__ bcast_sta; int cab_queue; TYPE_1__ time_event_data; scalar_t__ color; } ;
struct iwl_mvm_mac_iface_iterator_data {scalar_t__ preferred_tsf; int found_vif; int available_tsf_ids; int available_mac_ids; struct ieee80211_vif* vif; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int status; int hw; int mutex; } ;
struct ieee80211_vif {int type; int p2p; } ;


 int EBUSY ;
 int EIO ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int IEEE80211_SMPS_AUTOMATIC ;
 int INIT_LIST_HEAD (int *) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_MVM_DQA_GCAST_QUEUE ;
 void* IWL_MVM_INVALID_STA ;
 int IWL_MVM_STATUS_IN_HW_RESTART ;

 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_P2P_DEVICE ;

 int NUM_IWL_MVM_SMPS_REQ ;
 scalar_t__ NUM_MAC_INDEX_DRIVER ;
 scalar_t__ NUM_TSF_IDS ;
 int TE_MAX ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int __clear_bit (int ,int ) ;
 void* find_first_bit (int ,scalar_t__) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_mvm_mac_iface_iterator_data*) ;
 int iwl_mvm_mac_iface_iterator ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;
 int memset (struct iwl_mvm_vif*,int ,int) ;
 int test_bit (int ,int *) ;

int iwl_mvm_mac_ctxt_init(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 struct iwl_mvm_mac_iface_iterator_data data = {
  .mvm = mvm,
  .vif = vif,
  .available_mac_ids = { (1 << NUM_MAC_INDEX_DRIVER) - 1 },
  .available_tsf_ids = { (1 << NUM_TSF_IDS) - 1 },

  .preferred_tsf = NUM_TSF_IDS,
  .found_vif = 0,
 };
 int ret, i;

 lockdep_assert_held(&mvm->mutex);
 switch (vif->type) {
 case 129:
  break;
 case 128:
  if (!vif->p2p)
   break;

 default:
  __clear_bit(0, data.available_mac_ids);
 }

 ieee80211_iterate_active_interfaces_atomic(
  mvm->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  iwl_mvm_mac_iface_iterator, &data);
 if (data.found_vif)
  return 0;


 if (WARN_ON_ONCE(test_bit(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)))
  return -EBUSY;

 mvmvif->id = find_first_bit(data.available_mac_ids,
        NUM_MAC_INDEX_DRIVER);
 if (mvmvif->id == NUM_MAC_INDEX_DRIVER) {
  IWL_ERR(mvm, "Failed to init MAC context - no free ID!\n");
  ret = -EIO;
  goto exit_fail;
 }

 if (data.preferred_tsf != NUM_TSF_IDS)
  mvmvif->tsf_id = data.preferred_tsf;
 else
  mvmvif->tsf_id = find_first_bit(data.available_tsf_ids,
      NUM_TSF_IDS);
 if (mvmvif->tsf_id == NUM_TSF_IDS) {
  IWL_ERR(mvm, "Failed to init MAC context - no free TSF!\n");
  ret = -EIO;
  goto exit_fail;
 }

 mvmvif->color = 0;

 INIT_LIST_HEAD(&mvmvif->time_event_data.list);
 mvmvif->time_event_data.id = TE_MAX;


 if (vif->type == NL80211_IFTYPE_P2P_DEVICE)
  return 0;


 if (vif->type == NL80211_IFTYPE_AP ||
     vif->type == 129) {




  mvmvif->cab_queue = IWL_MVM_DQA_GCAST_QUEUE;
 }

 mvmvif->bcast_sta.sta_id = IWL_MVM_INVALID_STA;
 mvmvif->mcast_sta.sta_id = IWL_MVM_INVALID_STA;
 mvmvif->ap_sta_id = IWL_MVM_INVALID_STA;

 for (i = 0; i < NUM_IWL_MVM_SMPS_REQ; i++)
  mvmvif->smps_requests[i] = IEEE80211_SMPS_AUTOMATIC;

 return 0;

exit_fail:
 memset(mvmvif, 0, sizeof(struct iwl_mvm_vif));
 return ret;
}
