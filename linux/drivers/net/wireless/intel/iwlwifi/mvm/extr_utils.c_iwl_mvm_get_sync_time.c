
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct iwl_mvm {int ps_disabled; int mutex; } ;


 int iwl_mvm_get_systime (struct iwl_mvm*) ;
 int iwl_mvm_power_update_device (struct iwl_mvm*) ;
 int ktime_get_boottime_ns () ;
 int lockdep_assert_held (int *) ;

void iwl_mvm_get_sync_time(struct iwl_mvm *mvm, u32 *gp2, u64 *boottime)
{
 bool ps_disabled;

 lockdep_assert_held(&mvm->mutex);


 ps_disabled = mvm->ps_disabled;
 if (!ps_disabled) {
  mvm->ps_disabled = 1;
  iwl_mvm_power_update_device(mvm);
 }

 *gp2 = iwl_mvm_get_systime(mvm);
 *boottime = ktime_get_boottime_ns();

 if (!ps_disabled) {
  mvm->ps_disabled = ps_disabled;
  iwl_mvm_power_update_device(mvm);
 }
}
