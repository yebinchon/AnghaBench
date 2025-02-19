
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm {int mutex; } ;
struct ieee80211_vif_chanctx_switch {int old_ctx; int vif; int new_ctx; } ;


 int IWL_ERR (struct iwl_mvm*,char*) ;
 int __iwl_mvm_add_chanctx (struct iwl_mvm*,int ) ;
 int __iwl_mvm_assign_vif_chanctx (struct iwl_mvm*,int ,int ,int) ;
 int __iwl_mvm_remove_chanctx (struct iwl_mvm*,int ) ;
 int __iwl_mvm_unassign_vif_chanctx (struct iwl_mvm*,int ,int ,int) ;
 int iwl_mvm_nic_restart (struct iwl_mvm*,int) ;
 int iwl_mvm_phy_ctx_count (struct iwl_mvm*) ;
 int iwl_mvm_teardown_tdls_peers (struct iwl_mvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
iwl_mvm_switch_vif_chanctx_swap(struct iwl_mvm *mvm,
    struct ieee80211_vif_chanctx_switch *vifs)
{
 int ret;

 mutex_lock(&mvm->mutex);
 __iwl_mvm_unassign_vif_chanctx(mvm, vifs[0].vif, vifs[0].old_ctx, 1);
 __iwl_mvm_remove_chanctx(mvm, vifs[0].old_ctx);

 ret = __iwl_mvm_add_chanctx(mvm, vifs[0].new_ctx);
 if (ret) {
  IWL_ERR(mvm, "failed to add new_ctx during channel switch\n");
  goto out_reassign;
 }

 ret = __iwl_mvm_assign_vif_chanctx(mvm, vifs[0].vif, vifs[0].new_ctx,
        1);
 if (ret) {
  IWL_ERR(mvm,
   "failed to assign new_ctx during channel switch\n");
  goto out_remove;
 }


 if (iwl_mvm_phy_ctx_count(mvm) > 1)
  iwl_mvm_teardown_tdls_peers(mvm);

 goto out;

out_remove:
 __iwl_mvm_remove_chanctx(mvm, vifs[0].new_ctx);

out_reassign:
 if (__iwl_mvm_add_chanctx(mvm, vifs[0].old_ctx)) {
  IWL_ERR(mvm, "failed to add old_ctx back after failure.\n");
  goto out_restart;
 }

 if (__iwl_mvm_assign_vif_chanctx(mvm, vifs[0].vif, vifs[0].old_ctx,
      1)) {
  IWL_ERR(mvm, "failed to reassign old_ctx after failure.\n");
  goto out_restart;
 }

 goto out;

out_restart:

 iwl_mvm_nic_restart(mvm, 0);

out:
 mutex_unlock(&mvm->mutex);

 return ret;
}
