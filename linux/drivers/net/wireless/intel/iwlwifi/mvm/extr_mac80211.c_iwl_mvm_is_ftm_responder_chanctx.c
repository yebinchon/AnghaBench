
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_mvm_ftm_responder_iter_data {int responder; struct ieee80211_chanctx_conf* ctx; } ;
struct iwl_mvm {int hw; } ;
struct ieee80211_chanctx_conf {int dummy; } ;


 int IEEE80211_IFACE_ITER_NORMAL ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct iwl_mvm_ftm_responder_iter_data*) ;
 int iwl_mvm_ftm_responder_chanctx_iter ;

__attribute__((used)) static bool iwl_mvm_is_ftm_responder_chanctx(struct iwl_mvm *mvm,
          struct ieee80211_chanctx_conf *ctx)
{
 struct iwl_mvm_ftm_responder_iter_data data = {
  .responder = 0,
  .ctx = ctx,
 };

 ieee80211_iterate_active_interfaces_atomic(mvm->hw,
     IEEE80211_IFACE_ITER_NORMAL,
     iwl_mvm_ftm_responder_chanctx_iter,
     &data);
 return data.responder;
}
