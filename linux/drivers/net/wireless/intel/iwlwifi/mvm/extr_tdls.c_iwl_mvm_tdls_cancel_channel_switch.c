
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t sta_id; int * skb; } ;
struct TYPE_6__ {size_t cur_sta_id; scalar_t__ state; int dwork; TYPE_1__ peer; } ;
struct iwl_mvm {TYPE_3__ tdls_cs; int mutex; int * fw_id_to_mac_id; } ;
struct TYPE_5__ {int dtim_period; int beacon_int; } ;
struct ieee80211_vif {TYPE_2__ bss_conf; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {int dummy; } ;


 int IWL_DEBUG_TDLS (struct iwl_mvm*,char*,int ) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 size_t IWL_MVM_INVALID_STA ;
 scalar_t__ IWL_MVM_TDLS_SW_IDLE ;
 int TU_TO_MS (int) ;
 int dev_kfree_skb (int *) ;
 int flush_delayed_work (int *) ;
 int lockdep_is_held (int *) ;
 int msleep (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_sta* rcu_dereference_protected (int ,int ) ;

void iwl_mvm_tdls_cancel_channel_switch(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct ieee80211_sta *cur_sta;
 bool wait_for_phy = 0;

 mutex_lock(&mvm->mutex);

 IWL_DEBUG_TDLS(mvm, "TDLS cancel channel switch with %pM\n", sta->addr);


 if (mvm->tdls_cs.peer.sta_id == IWL_MVM_INVALID_STA) {
  IWL_DEBUG_TDLS(mvm, "No ch switch peer - %pM\n", sta->addr);
  goto out;
 }

 cur_sta = rcu_dereference_protected(
    mvm->fw_id_to_mac_id[mvm->tdls_cs.peer.sta_id],
    lockdep_is_held(&mvm->mutex));

 if (cur_sta != sta)
  goto out;






 if (mvm->tdls_cs.cur_sta_id == mvm->tdls_cs.peer.sta_id &&
     mvm->tdls_cs.state != IWL_MVM_TDLS_SW_IDLE)
  wait_for_phy = 1;

 mvm->tdls_cs.peer.sta_id = IWL_MVM_INVALID_STA;
 dev_kfree_skb(mvm->tdls_cs.peer.skb);
 mvm->tdls_cs.peer.skb = ((void*)0);

out:
 mutex_unlock(&mvm->mutex);


 if (wait_for_phy)
  msleep(TU_TO_MS(vif->bss_conf.dtim_period *
    vif->bss_conf.beacon_int));


 flush_delayed_work(&mvm->tdls_cs.dwork);

 IWL_DEBUG_TDLS(mvm, "TDLS ending channel switch with %pM\n", sta->addr);
}
