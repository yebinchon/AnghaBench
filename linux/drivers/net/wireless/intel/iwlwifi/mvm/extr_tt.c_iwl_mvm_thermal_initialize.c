
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_mvm_tt_mgmt {int throttle; int dynamic_smps; int ct_kill_exit; int min_backoff; int params; } ;
struct iwl_mvm {int init_status; TYPE_1__* cfg; struct iwl_mvm_tt_mgmt thermal_throttle; } ;
struct TYPE_2__ {int * thermal_params; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int IWL_DEBUG_TEMP (struct iwl_mvm*,char*) ;
 int IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE ;
 int check_exit_ctkill ;
 int iwl_mvm_cooling_device_register (struct iwl_mvm*) ;
 int iwl_mvm_default_tt_params ;
 int iwl_mvm_thermal_zone_register (struct iwl_mvm*) ;

void iwl_mvm_thermal_initialize(struct iwl_mvm *mvm, u32 min_backoff)
{
 struct iwl_mvm_tt_mgmt *tt = &mvm->thermal_throttle;

 IWL_DEBUG_TEMP(mvm, "Initialize Thermal Throttling\n");

 if (mvm->cfg->thermal_params)
  tt->params = *mvm->cfg->thermal_params;
 else
  tt->params = iwl_mvm_default_tt_params;

 tt->throttle = 0;
 tt->dynamic_smps = 0;
 tt->min_backoff = min_backoff;
 INIT_DELAYED_WORK(&tt->ct_kill_exit, check_exit_ctkill);





 mvm->init_status |= IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE;
}
