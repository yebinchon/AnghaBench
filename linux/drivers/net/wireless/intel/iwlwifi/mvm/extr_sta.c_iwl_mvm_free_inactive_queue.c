
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {TYPE_1__* queue_info; int mutex; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {scalar_t__ ra_sta_id; scalar_t__ txq_tid; } ;


 int EINVAL ;
 int IWL_ERR (struct iwl_mvm*,char*,int,int) ;
 scalar_t__ WARN_ON (int) ;
 int iwl_mvm_disable_txq (struct iwl_mvm*,struct ieee80211_sta*,int,scalar_t__,int ) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_invalidate_sta_queue (struct iwl_mvm*,int,unsigned long,int) ;
 unsigned long iwl_mvm_remove_sta_queue_marking (struct iwl_mvm*,int) ;
 struct iwl_mvm_sta* iwl_mvm_sta_from_staid_protected (struct iwl_mvm*,scalar_t__) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_mvm_free_inactive_queue(struct iwl_mvm *mvm, int queue,
           struct ieee80211_sta *old_sta,
           u8 new_sta_id)
{
 struct iwl_mvm_sta *mvmsta;
 u8 sta_id, tid;
 unsigned long disable_agg_tids = 0;
 bool same_sta;
 int ret;

 lockdep_assert_held(&mvm->mutex);

 if (WARN_ON(iwl_mvm_has_new_tx_api(mvm)))
  return -EINVAL;

 sta_id = mvm->queue_info[queue].ra_sta_id;
 tid = mvm->queue_info[queue].txq_tid;

 same_sta = sta_id == new_sta_id;

 mvmsta = iwl_mvm_sta_from_staid_protected(mvm, sta_id);
 if (WARN_ON(!mvmsta))
  return -EINVAL;

 disable_agg_tids = iwl_mvm_remove_sta_queue_marking(mvm, queue);

 if (disable_agg_tids)
  iwl_mvm_invalidate_sta_queue(mvm, queue,
          disable_agg_tids, 0);

 ret = iwl_mvm_disable_txq(mvm, old_sta, queue, tid, 0);
 if (ret) {
  IWL_ERR(mvm,
   "Failed to free inactive queue %d (ret=%d)\n",
   queue, ret);

  return ret;
 }


 if (!same_sta)
  iwl_mvm_invalidate_sta_queue(mvm, queue, 0, 1);

 return 0;
}
