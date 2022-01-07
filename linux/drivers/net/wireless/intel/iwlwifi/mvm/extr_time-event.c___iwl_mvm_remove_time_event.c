
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_mvm_time_event_data {scalar_t__ uid; scalar_t__ id; } ;
struct iwl_mvm {int time_event_lock; } ;


 int IWL_DEBUG_TE (struct iwl_mvm*,char*,scalar_t__) ;
 scalar_t__ TE_MAX ;
 int iwl_mvm_te_clear_data (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool __iwl_mvm_remove_time_event(struct iwl_mvm *mvm,
     struct iwl_mvm_time_event_data *te_data,
     u32 *uid)
{
 u32 id;





 spin_lock_bh(&mvm->time_event_lock);


 *uid = te_data->uid;
 id = te_data->id;




 iwl_mvm_te_clear_data(mvm, te_data);
 spin_unlock_bh(&mvm->time_event_lock);






 if (id == TE_MAX) {
  IWL_DEBUG_TE(mvm, "TE 0x%x has already ended\n", *uid);
  return 0;
 }

 return 1;
}
