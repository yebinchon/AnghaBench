
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_phy_ctxt {int ref; } ;
struct iwl_mvm {int mutex; } ;


 int lockdep_assert_held (int *) ;

void iwl_mvm_phy_ctxt_ref(struct iwl_mvm *mvm, struct iwl_mvm_phy_ctxt *ctxt)
{
 lockdep_assert_held(&mvm->mutex);
 ctxt->ref++;
}
