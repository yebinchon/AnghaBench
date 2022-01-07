
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm {TYPE_1__* phy_ctxts; } ;
struct TYPE_2__ {int id; scalar_t__ ref; } ;


 int NUM_PHY_CTX ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void iwl_mvm_reset_phy_ctxts(struct iwl_mvm *mvm)
{
 int i;

 memset(mvm->phy_ctxts, 0, sizeof(mvm->phy_ctxts));
 for (i = 0; i < NUM_PHY_CTX; i++) {
  mvm->phy_ctxts[i].id = i;
  mvm->phy_ctxts[i].ref = 0;
 }
}
