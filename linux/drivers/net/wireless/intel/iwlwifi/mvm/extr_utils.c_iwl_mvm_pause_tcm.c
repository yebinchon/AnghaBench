
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int paused; int work; int lock; } ;
struct iwl_mvm {TYPE_1__ tcm; } ;


 int cancel_delayed_work_sync (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iwl_mvm_pause_tcm(struct iwl_mvm *mvm, bool with_cancel)
{
 spin_lock_bh(&mvm->tcm.lock);
 mvm->tcm.paused = 1;
 spin_unlock_bh(&mvm->tcm.lock);
 if (with_cancel)
  cancel_delayed_work_sync(&mvm->tcm.work);
}
