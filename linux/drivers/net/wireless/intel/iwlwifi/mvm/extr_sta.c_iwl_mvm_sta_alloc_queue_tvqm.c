
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm_txq {int txq_id; } ;
struct iwl_mvm_sta {int lock; TYPE_2__* tid_data; int sta_id; int vif; } ;
struct iwl_mvm {TYPE_1__* tvqm_info; int mutex; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_4__ {int txq_id; } ;
struct TYPE_3__ {int txq_tid; int sta_id; } ;


 int IWL_DEBUG_TX_QUEUES (struct iwl_mvm*,char*,int,...) ;
 unsigned int iwl_mvm_get_wd_timeout (struct iwl_mvm*,int ,int,int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_mac80211 (struct ieee80211_sta*) ;
 int iwl_mvm_tvqm_enable_txq (struct iwl_mvm*,int ,int,unsigned int) ;
 struct iwl_mvm_txq* iwl_mvm_txq_from_tid (struct ieee80211_sta*,int) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iwl_mvm_sta_alloc_queue_tvqm(struct iwl_mvm *mvm,
     struct ieee80211_sta *sta, u8 ac,
     int tid)
{
 struct iwl_mvm_sta *mvmsta = iwl_mvm_sta_from_mac80211(sta);
 struct iwl_mvm_txq *mvmtxq =
  iwl_mvm_txq_from_tid(sta, tid);
 unsigned int wdg_timeout =
  iwl_mvm_get_wd_timeout(mvm, mvmsta->vif, 0, 0);
 int queue = -1;

 lockdep_assert_held(&mvm->mutex);

 IWL_DEBUG_TX_QUEUES(mvm,
       "Allocating queue for sta %d on tid %d\n",
       mvmsta->sta_id, tid);
 queue = iwl_mvm_tvqm_enable_txq(mvm, mvmsta->sta_id, tid, wdg_timeout);
 if (queue < 0)
  return queue;

 mvmtxq->txq_id = queue;
 mvm->tvqm_info[queue].txq_tid = tid;
 mvm->tvqm_info[queue].sta_id = mvmsta->sta_id;

 IWL_DEBUG_TX_QUEUES(mvm, "Allocated queue is %d\n", queue);

 spin_lock_bh(&mvmsta->lock);
 mvmsta->tid_data[tid].txq_id = queue;
 spin_unlock_bh(&mvmsta->lock);

 return 0;
}
