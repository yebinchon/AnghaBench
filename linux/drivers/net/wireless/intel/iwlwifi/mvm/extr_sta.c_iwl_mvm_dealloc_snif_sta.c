
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int snif_sta; } ;


 int iwl_mvm_dealloc_int_sta (struct iwl_mvm*,int *) ;

void iwl_mvm_dealloc_snif_sta(struct iwl_mvm *mvm)
{
 iwl_mvm_dealloc_int_sta(mvm, &mvm->snif_sta);
}
