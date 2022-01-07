
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm_txq {scalar_t__ txq_id; } ;
struct iwl_mvm_sta {TYPE_1__* tid_data; } ;
struct iwl_mvm {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {TYPE_1__* txq; } ;
struct TYPE_3__ {scalar_t__ txq_id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ IWL_MVM_INVALID_QUEUE ;
 int iwl_mvm_disable_txq (struct iwl_mvm*,struct ieee80211_sta*,scalar_t__,int,int ) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 struct iwl_mvm_txq* iwl_mvm_txq_from_mac80211 (TYPE_1__) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_mvm_disable_sta_queues(struct iwl_mvm *mvm,
           struct ieee80211_vif *vif,
           struct ieee80211_sta *sta)
{
 struct iwl_mvm_sta *mvm_sta = iwl_mvm_sta_from_mac80211(sta);
 int i;

 lockdep_assert_held(&mvm->mutex);

 for (i = 0; i < ARRAY_SIZE(mvm_sta->tid_data); i++) {
  if (mvm_sta->tid_data[i].txq_id == IWL_MVM_INVALID_QUEUE)
   continue;

  iwl_mvm_disable_txq(mvm, sta, mvm_sta->tid_data[i].txq_id, i,
        0);
  mvm_sta->tid_data[i].txq_id = IWL_MVM_INVALID_QUEUE;
 }

 for (i = 0; i < ARRAY_SIZE(sta->txq); i++) {
  struct iwl_mvm_txq *mvmtxq =
   iwl_mvm_txq_from_mac80211(sta->txq[i]);

  mvmtxq->txq_id = IWL_MVM_INVALID_QUEUE;
 }
}
