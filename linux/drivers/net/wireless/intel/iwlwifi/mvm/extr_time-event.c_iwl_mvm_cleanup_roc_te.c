
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm_time_event_data {int dummy; } ;
struct iwl_mvm {int dummy; } ;


 int __iwl_mvm_remove_time_event (struct iwl_mvm*,struct iwl_mvm_time_event_data*,int *) ;
 struct iwl_mvm_time_event_data* iwl_mvm_get_roc_te (struct iwl_mvm*) ;

void iwl_mvm_cleanup_roc_te(struct iwl_mvm *mvm)
{
 struct iwl_mvm_time_event_data *te_data;
 u32 uid;

 te_data = iwl_mvm_get_roc_te(mvm);
 if (te_data)
  __iwl_mvm_remove_time_event(mvm, te_data, &uid);
}
