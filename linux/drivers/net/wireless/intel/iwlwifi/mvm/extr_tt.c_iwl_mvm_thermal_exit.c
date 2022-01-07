
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ct_kill_exit; } ;
struct iwl_mvm {int init_status; TYPE_1__ thermal_throttle; } ;


 int IWL_DEBUG_TEMP (struct iwl_mvm*,char*) ;
 int IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE ;
 int cancel_delayed_work_sync (int *) ;
 int iwl_mvm_cooling_device_unregister (struct iwl_mvm*) ;
 int iwl_mvm_thermal_zone_unregister (struct iwl_mvm*) ;

void iwl_mvm_thermal_exit(struct iwl_mvm *mvm)
{
 if (!(mvm->init_status & IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE))
  return;

 cancel_delayed_work_sync(&mvm->thermal_throttle.ct_kill_exit);
 IWL_DEBUG_TEMP(mvm, "Exit Thermal Throttling\n");





 mvm->init_status &= ~IWL_MVM_INIT_STATUS_THERMAL_INIT_COMPLETE;
}
