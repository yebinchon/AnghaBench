
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_mvm_txq {int stopped; int tx_request; } ;
struct iwl_mvm {TYPE_1__* trans; } ;
struct ieee80211_txq {TYPE_2__* sta; int tid; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {scalar_t__ system_pm_mode; } ;


 int IWL_DEBUG_TX (struct iwl_mvm*,char*,int ,int ) ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ IWL_PLAT_PM_MODE_DISABLED ;
 scalar_t__ atomic_dec_return (int *) ;
 scalar_t__ atomic_fetch_add_unless (int *,int,int) ;
 struct sk_buff* ieee80211_tx_dequeue (struct ieee80211_hw*,struct ieee80211_txq*) ;
 int iwl_mvm_tx_skb (struct iwl_mvm*,struct sk_buff*,TYPE_2__*) ;
 int iwl_mvm_tx_skb_non_sta (struct iwl_mvm*,struct sk_buff*) ;
 struct iwl_mvm_txq* iwl_mvm_txq_from_mac80211 (struct ieee80211_txq*) ;
 scalar_t__ likely (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void iwl_mvm_mac_itxq_xmit(struct ieee80211_hw *hw, struct ieee80211_txq *txq)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 struct iwl_mvm_txq *mvmtxq = iwl_mvm_txq_from_mac80211(txq);
 struct sk_buff *skb = ((void*)0);
 if (atomic_fetch_add_unless(&mvmtxq->tx_request, 1, 2))
  return;

 rcu_read_lock();
 do {
  while (likely(!mvmtxq->stopped &&
         (mvm->trans->system_pm_mode ==
          IWL_PLAT_PM_MODE_DISABLED))) {
   skb = ieee80211_tx_dequeue(hw, txq);

   if (!skb) {
    if (txq->sta)
     IWL_DEBUG_TX(mvm,
           "TXQ of sta %pM tid %d is now empty\n",
           txq->sta->addr,
           txq->tid);
    break;
   }

   if (!txq->sta)
    iwl_mvm_tx_skb_non_sta(mvm, skb);
   else
    iwl_mvm_tx_skb(mvm, skb, txq->sta);
  }
 } while (atomic_dec_return(&mvmtxq->tx_request));
 rcu_read_unlock();
}
