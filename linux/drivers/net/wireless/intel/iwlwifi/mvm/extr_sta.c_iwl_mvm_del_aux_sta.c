
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int aux_sta; int mutex; } ;


 int iwl_mvm_dealloc_int_sta (struct iwl_mvm*,int *) ;
 int lockdep_assert_held (int *) ;

void iwl_mvm_del_aux_sta(struct iwl_mvm *mvm)
{
 lockdep_assert_held(&mvm->mutex);

 iwl_mvm_dealloc_int_sta(mvm, &mvm->aux_sta);
}
