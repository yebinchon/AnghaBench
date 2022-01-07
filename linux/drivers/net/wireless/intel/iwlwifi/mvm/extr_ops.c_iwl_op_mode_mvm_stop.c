
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_op_mode {int dummy; } ;
struct TYPE_4__ {int work; } ;
struct iwl_mvm {int hw; int mutex; int fwrt; TYPE_2__ tcm; TYPE_1__* nvm_sections; int * nvm_data; int * phy_db; int trans; int * error_recovery_buf; int * mcast_filter_cmd; int * scan_cmd; } ;
struct TYPE_3__ {int * data; } ;


 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int NVM_MAX_NUM_SECTIONS ;
 int cancel_delayed_work_sync (int *) ;
 int ieee80211_free_hw (int ) ;
 int ieee80211_unregister_hw (int ) ;
 int iwl_fw_runtime_free (int *) ;
 int iwl_mvm_leds_exit (struct iwl_mvm*) ;
 int iwl_mvm_thermal_exit (struct iwl_mvm*) ;
 int iwl_phy_db_free (int *) ;
 int iwl_trans_op_mode_leave (int ) ;
 int kfree (int *) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void iwl_op_mode_mvm_stop(struct iwl_op_mode *op_mode)
{
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);
 int i;

 iwl_mvm_leds_exit(mvm);

 iwl_mvm_thermal_exit(mvm);

 ieee80211_unregister_hw(mvm->hw);

 kfree(mvm->scan_cmd);
 kfree(mvm->mcast_filter_cmd);
 mvm->mcast_filter_cmd = ((void*)0);

 kfree(mvm->error_recovery_buf);
 mvm->error_recovery_buf = ((void*)0);

 iwl_trans_op_mode_leave(mvm->trans);

 iwl_phy_db_free(mvm->phy_db);
 mvm->phy_db = ((void*)0);

 kfree(mvm->nvm_data);
 for (i = 0; i < NVM_MAX_NUM_SECTIONS; i++)
  kfree(mvm->nvm_sections[i].data);

 cancel_delayed_work_sync(&mvm->tcm.work);

 iwl_fw_runtime_free(&mvm->fwrt);
 mutex_destroy(&mvm->mutex);

 ieee80211_free_hw(mvm->hw);
}
