
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {TYPE_1__* hw; int rx_sync_waitq; } ;
struct TYPE_2__ {int wiphy; } ;


 int iwl_mvm_is_radio_killed (struct iwl_mvm*) ;
 int wake_up (int *) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void iwl_mvm_set_rfkill_state(struct iwl_mvm *mvm)
{
 bool state = iwl_mvm_is_radio_killed(mvm);

 if (state)
  wake_up(&mvm->rx_sync_waitq);

 wiphy_rfkill_set_hw_state(mvm->hw->wiphy, state);
}
