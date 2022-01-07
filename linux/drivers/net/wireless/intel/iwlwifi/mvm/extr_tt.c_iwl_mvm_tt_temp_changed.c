
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iwl_mvm {scalar_t__ temperature; scalar_t__ temperature_test; } ;


 int iwl_mvm_tt_handler (struct iwl_mvm*) ;

void iwl_mvm_tt_temp_changed(struct iwl_mvm *mvm, u32 temp)
{

 if (mvm->temperature_test)
  return;

 if (mvm->temperature == temp)
  return;

 mvm->temperature = temp;
 iwl_mvm_tt_handler(mvm);
}
