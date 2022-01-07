
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_power_vifs {scalar_t__ bss_vif; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int hw; int mutex; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_power_vifs*) ;
 int iwl_mvm_power_get_vifs_iterator ;
 int iwl_mvm_power_set_ba (struct iwl_mvm*,scalar_t__) ;
 int iwl_mvm_power_set_ps (struct iwl_mvm*) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_power_update_ps(struct iwl_mvm *mvm)
{
 struct iwl_power_vifs vifs = {
  .mvm = mvm,
 };
 int ret;

 lockdep_assert_held(&mvm->mutex);


 ieee80211_iterate_active_interfaces_atomic(mvm->hw,
     IEEE80211_IFACE_ITER_NORMAL,
     iwl_mvm_power_get_vifs_iterator, &vifs);

 ret = iwl_mvm_power_set_ps(mvm);
 if (ret)
  return ret;

 if (vifs.bss_vif)
  return iwl_mvm_power_set_ba(mvm, vifs.bss_vif);

 return 0;
}
