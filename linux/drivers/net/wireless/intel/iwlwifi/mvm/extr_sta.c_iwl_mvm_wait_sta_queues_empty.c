
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct iwl_mvm_sta {int lock; TYPE_1__* tid_data; } ;
struct iwl_mvm {int trans; } ;
struct TYPE_2__ {scalar_t__ txq_id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ IWL_MVM_INVALID_QUEUE ;
 int iwl_trans_wait_txq_empty (int ,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwl_mvm_wait_sta_queues_empty(struct iwl_mvm *mvm,
      struct iwl_mvm_sta *mvm_sta)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(mvm_sta->tid_data); i++) {
  u16 txq_id;
  int ret;

  spin_lock_bh(&mvm_sta->lock);
  txq_id = mvm_sta->tid_data[i].txq_id;
  spin_unlock_bh(&mvm_sta->lock);

  if (txq_id == IWL_MVM_INVALID_QUEUE)
   continue;

  ret = iwl_trans_wait_txq_empty(mvm->trans, txq_id);
  if (ret)
   return ret;
 }

 return 0;
}
