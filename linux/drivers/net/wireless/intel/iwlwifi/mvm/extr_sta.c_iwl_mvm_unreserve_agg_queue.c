
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct iwl_mvm_tid_data {size_t txq_id; } ;
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {TYPE_1__* queue_info; int mutex; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 size_t IWL_MVM_INVALID_QUEUE ;
 scalar_t__ IWL_MVM_QUEUE_FREE ;
 scalar_t__ IWL_MVM_QUEUE_RESERVED ;
 scalar_t__ iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_mvm_unreserve_agg_queue(struct iwl_mvm *mvm,
     struct iwl_mvm_sta *mvmsta,
     struct iwl_mvm_tid_data *tid_data)
{
 u16 txq_id = tid_data->txq_id;

 lockdep_assert_held(&mvm->mutex);

 if (iwl_mvm_has_new_tx_api(mvm))
  return;
 if (mvm->queue_info[txq_id].status == IWL_MVM_QUEUE_RESERVED) {
  mvm->queue_info[txq_id].status = IWL_MVM_QUEUE_FREE;
  tid_data->txq_id = IWL_MVM_INVALID_QUEUE;
 }
}
