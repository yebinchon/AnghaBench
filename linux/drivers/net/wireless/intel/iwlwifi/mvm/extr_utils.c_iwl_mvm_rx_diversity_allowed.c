
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {int hw; TYPE_1__* cfg; int mutex; } ;
struct TYPE_2__ {scalar_t__ rx_with_siso_diversity; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,int*) ;
 int iwl_mvm_diversity_iter ;
 int iwl_mvm_get_valid_rx_ant (struct iwl_mvm*) ;
 int lockdep_assert_held (int *) ;
 int num_of_ant (int ) ;

bool iwl_mvm_rx_diversity_allowed(struct iwl_mvm *mvm)
{
 bool result = 1;

 lockdep_assert_held(&mvm->mutex);

 if (num_of_ant(iwl_mvm_get_valid_rx_ant(mvm)) == 1)
  return 0;

 if (mvm->cfg->rx_with_siso_diversity)
  return 0;

 ieee80211_iterate_active_interfaces_atomic(
   mvm->hw, IEEE80211_IFACE_ITER_NORMAL,
   iwl_mvm_diversity_iter, &result);

 return result;
}
