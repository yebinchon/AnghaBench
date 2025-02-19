
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct iwl_mvm_phy_ctxt {int ref; scalar_t__ width; } ;
struct iwl_mvm {int mutex; struct iwl_mvm_phy_ctxt* phy_ctxts; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_chan_def {scalar_t__ width; } ;
struct ieee80211_chanctx_conf {int rx_chains_dynamic; int rx_chains_static; struct cfg80211_chan_def min_def; struct cfg80211_chan_def def; scalar_t__ drv_priv; } ;


 int IEEE80211_CHANCTX_CHANGE_MIN_WIDTH ;
 int IEEE80211_CHANCTX_CHANGE_RADAR ;
 int IEEE80211_CHANCTX_CHANGE_RX_CHAINS ;
 int IEEE80211_CHANCTX_CHANGE_WIDTH ;
 struct iwl_mvm* IWL_MAC80211_GET_MVM (struct ieee80211_hw*) ;
 scalar_t__ NL80211_CHAN_WIDTH_20 ;
 scalar_t__ WARN_ONCE (int,char*,int,int) ;
 int iwl_mvm_bt_coex_vif_change (struct iwl_mvm*) ;
 int iwl_mvm_is_ftm_responder_chanctx (struct iwl_mvm*,struct ieee80211_chanctx_conf*) ;
 int iwl_mvm_phy_ctxt_changed (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,struct cfg80211_chan_def*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void iwl_mvm_change_chanctx(struct ieee80211_hw *hw,
       struct ieee80211_chanctx_conf *ctx,
       u32 changed)
{
 struct iwl_mvm *mvm = IWL_MAC80211_GET_MVM(hw);
 u16 *phy_ctxt_id = (u16 *)ctx->drv_priv;
 struct iwl_mvm_phy_ctxt *phy_ctxt = &mvm->phy_ctxts[*phy_ctxt_id];
 bool responder = iwl_mvm_is_ftm_responder_chanctx(mvm, ctx);
 struct cfg80211_chan_def *def = responder ? &ctx->def : &ctx->min_def;

 if (WARN_ONCE((phy_ctxt->ref > 1) &&
        (changed & ~(IEEE80211_CHANCTX_CHANGE_WIDTH |
       IEEE80211_CHANCTX_CHANGE_RX_CHAINS |
       IEEE80211_CHANCTX_CHANGE_RADAR |
       IEEE80211_CHANCTX_CHANGE_MIN_WIDTH)),
        "Cannot change PHY. Ref=%d, changed=0x%X\n",
        phy_ctxt->ref, changed))
  return;

 mutex_lock(&mvm->mutex);


 if (changed == IEEE80211_CHANCTX_CHANGE_MIN_WIDTH) {
  if (phy_ctxt->width == def->width)
   goto out_unlock;


  if (phy_ctxt->width <= NL80211_CHAN_WIDTH_20 &&
      def->width <= NL80211_CHAN_WIDTH_20)
   goto out_unlock;
 }

 iwl_mvm_bt_coex_vif_change(mvm);
 iwl_mvm_phy_ctxt_changed(mvm, phy_ctxt, def,
     ctx->rx_chains_static,
     ctx->rx_chains_dynamic);

out_unlock:
 mutex_unlock(&mvm->mutex);
}
