
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {int mutex; struct iwl_mvm_phy_ctxt* phy_ctxts; } ;
struct ieee80211_chanctx_conf {scalar_t__ drv_priv; } ;


 int iwl_mvm_phy_ctxt_unref (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void __iwl_mvm_remove_chanctx(struct iwl_mvm *mvm,
         struct ieee80211_chanctx_conf *ctx)
{
 u16 *phy_ctxt_id = (u16 *)ctx->drv_priv;
 struct iwl_mvm_phy_ctxt *phy_ctxt = &mvm->phy_ctxts[*phy_ctxt_id];

 lockdep_assert_held(&mvm->mutex);

 iwl_mvm_phy_ctxt_unref(mvm, phy_ctxt);
}
