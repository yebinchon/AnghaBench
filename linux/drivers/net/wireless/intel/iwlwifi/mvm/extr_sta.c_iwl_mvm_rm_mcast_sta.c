
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sta_id; } ;
struct iwl_mvm_vif {TYPE_1__ mcast_sta; int cab_queue; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;


 int IWL_WARN (struct iwl_mvm*,char*) ;
 int iwl_mvm_disable_txq (struct iwl_mvm*,int *,int ,int ,int ) ;
 int iwl_mvm_flush_sta (struct iwl_mvm*,TYPE_1__*,int,int ) ;
 int iwl_mvm_rm_sta_common (struct iwl_mvm*,int ) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_rm_mcast_sta(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 int ret;

 lockdep_assert_held(&mvm->mutex);

 iwl_mvm_flush_sta(mvm, &mvmvif->mcast_sta, 1, 0);

 iwl_mvm_disable_txq(mvm, ((void*)0), mvmvif->cab_queue, 0, 0);

 ret = iwl_mvm_rm_sta_common(mvm, mvmvif->mcast_sta.sta_id);
 if (ret)
  IWL_WARN(mvm, "Failed sending remove station\n");

 return ret;
}
