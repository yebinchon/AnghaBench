
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iwl_mvm {TYPE_1__* queue_info; int mutex; } ;
struct TYPE_2__ {scalar_t__ tid_bitmap; scalar_t__ status; } ;


 int ENOSPC ;
 scalar_t__ IWL_MVM_QUEUE_FREE ;
 scalar_t__ WARN_ON (int ) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int iwl_mvm_find_free_queue(struct iwl_mvm *mvm, u8 sta_id,
       u8 minq, u8 maxq)
{
 int i;

 lockdep_assert_held(&mvm->mutex);


 if (WARN_ON(iwl_mvm_has_new_tx_api(mvm)))
  return -ENOSPC;


 for (i = minq; i <= maxq; i++)
  if (mvm->queue_info[i].tid_bitmap == 0 &&
      mvm->queue_info[i].status == IWL_MVM_QUEUE_FREE)
   return i;

 return -ENOSPC;
}
