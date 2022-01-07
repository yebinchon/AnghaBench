
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int roc_done_wk; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void iwl_mvm_roc_finished(struct iwl_mvm *mvm)
{







 schedule_work(&mvm->roc_done_wk);
}
