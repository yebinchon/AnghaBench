
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int dummy; } ;


 int iwl_mvm_bt_coex_notif_handle (struct iwl_mvm*) ;

void iwl_mvm_bt_coex_vif_change(struct iwl_mvm *mvm)
{
 iwl_mvm_bt_coex_notif_handle(mvm);
}
