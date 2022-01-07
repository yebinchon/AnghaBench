
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_txq {scalar_t__ txq_id; int list; } ;
struct iwl_mvm {int add_stream_wk; int add_stream_txqs; } ;
struct ieee80211_txq {scalar_t__ sta; } ;
struct ieee80211_hw {int dummy; } ;


 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ IWL_MVM_INVALID_QUEUE ;
 int iwl_mvm_mac_itxq_xmit (struct ieee80211_hw*,struct ieee80211_txq*) ;
 struct iwl_mvm_txq* iwl_mvm_txq_from_mac80211 (struct ieee80211_txq*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void iwl_mvm_mac_wake_tx_queue(struct ieee80211_hw *hw,
          struct ieee80211_txq *txq)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_txq *mvmtxq = iwl_mvm_txq_from_mac80211(txq);
 if (!txq->sta || mvmtxq->txq_id != IWL_MVM_INVALID_QUEUE) {





  if (unlikely(txq->sta && !list_empty(&mvmtxq->list)))
   return;

  iwl_mvm_mac_itxq_xmit(hw, txq);
  return;
 }


 if (!list_empty(&mvmtxq->list))
  return;

 list_add_tail(&mvmtxq->list, &mvm->add_stream_txqs);
 schedule_work(&mvm->add_stream_wk);
}
