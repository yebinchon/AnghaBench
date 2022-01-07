
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_mc_iter_data {struct iwl_mvm* mvm; } ;
struct iwl_mvm {int hw; int mcast_filter_cmd; int mutex; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_mvm_mc_iter_data*) ;
 int iwl_mvm_mc_iface_iterator ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void iwl_mvm_recalc_multicast(struct iwl_mvm *mvm)
{
 struct iwl_mvm_mc_iter_data iter_data = {
  .mvm = mvm,
 };

 lockdep_assert_held(&mvm->mutex);

 if (WARN_ON_ONCE(!mvm->mcast_filter_cmd))
  return;

 ieee80211_iterate_active_interfaces_atomic(
  mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
  iwl_mvm_mc_iface_iterator, &iter_data);
}
