
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iwl_mvm_phy_ctxt {int ref; } ;
struct iwl_mvm {struct iwl_mvm_phy_ctxt* phy_ctxts; int mutex; } ;


 int IWL_ERR (struct iwl_mvm*,char*) ;
 size_t NUM_PHY_CTX ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static struct iwl_mvm_phy_ctxt *iwl_mvm_get_free_phy_ctxt(struct iwl_mvm *mvm)
{
 u16 i;

 lockdep_assert_held(&mvm->mutex);

 for (i = 0; i < NUM_PHY_CTX; i++)
  if (!mvm->phy_ctxts[i].ref)
   return &mvm->phy_ctxts[i];

 IWL_ERR(mvm, "No available PHY context\n");
 return ((void*)0);
}
