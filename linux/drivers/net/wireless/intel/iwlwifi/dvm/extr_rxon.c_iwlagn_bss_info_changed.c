
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int filter_flags; int bssid_addr; int flags; int assoc_id; } ;
struct TYPE_7__ {int protection; int non_gf_sta_present; scalar_t__ enabled; } ;
struct TYPE_6__ {int qos_active; } ;
struct iwl_rxon_context {scalar_t__ ctxid; int active; TYPE_5__ staging; TYPE_2__ ht; TYPE_1__ qos_data; int vif; } ;
struct TYPE_9__ {scalar_t__ state; } ;
struct iwl_priv {int have_rekey_data; scalar_t__ band; int start_calib; int mutex; struct iwl_rxon_context* beacon_ctx; TYPE_4__ chain_noise_data; int current_ht_config; int timestamp; } ;
struct TYPE_8__ {scalar_t__ enable_beacon; scalar_t__ use_short_preamble; int aid; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_3__ bss_conf; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_bss_conf {int ht_operation_mode; int bssid; scalar_t__ ibss_joined; scalar_t__ assoc; scalar_t__ use_cts_prot; int sync_tsf; int qos; scalar_t__ idle; } ;


 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_IBSS ;
 int BSS_CHANGED_IDLE ;
 int BSS_CHANGED_QOS ;
 int ETH_ALEN ;
 int IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT ;
 int IEEE80211_HT_OP_MODE_PROTECTION ;
 scalar_t__ IWL_CHAIN_NOISE_DONE ;
 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*,...) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 scalar_t__ IWL_RXON_CTX_BSS ;
 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int RXON_FILTER_ASSOC_MSK ;
 int RXON_FILTER_BCON_AWARE_MSK ;
 int RXON_FLG_SELF_CTS_EN ;
 int RXON_FLG_SHORT_PREAMBLE_MSK ;
 int RXON_FLG_TGG_PROTECT_MSK ;
 int cpu_to_le16 (int ) ;
 int iwl_is_ready (struct iwl_priv*) ;
 int iwl_power_update_mode (struct iwl_priv*,int) ;
 struct iwl_rxon_context* iwl_rxon_ctx_from_vif (struct ieee80211_vif*) ;
 int iwl_set_rxon_ht (struct iwl_priv*,int *) ;
 int iwlagn_bt_coex_rssi_monitor (struct iwl_priv*) ;
 int iwlagn_chain_noise_reset (struct iwl_priv*) ;
 int iwlagn_check_needed_chains (struct iwl_priv*,struct iwl_rxon_context*,struct ieee80211_bss_conf*) ;
 int iwlagn_commit_rxon (struct iwl_priv*,struct iwl_rxon_context*) ;
 int iwlagn_lift_passive_no_rx (struct iwl_priv*) ;
 int iwlagn_manage_ibss_station (struct iwl_priv*,struct ieee80211_vif*,scalar_t__) ;
 int iwlagn_set_rxon_chain (struct iwl_priv*,struct iwl_rxon_context*) ;
 scalar_t__ iwlagn_update_beacon (struct iwl_priv*,struct ieee80211_vif*) ;
 int iwlagn_update_qos (struct iwl_priv*,struct iwl_rxon_context*) ;
 scalar_t__ memcmp (TYPE_5__*,int *,int) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

void iwlagn_bss_info_changed(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        struct ieee80211_bss_conf *bss_conf,
        u32 changes)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 struct iwl_rxon_context *ctx = iwl_rxon_ctx_from_vif(vif);
 int ret;
 bool force = 0;

 mutex_lock(&priv->mutex);

 if (changes & BSS_CHANGED_IDLE && bss_conf->idle) {




  iwlagn_lift_passive_no_rx(priv);
 }

 if (unlikely(!iwl_is_ready(priv))) {
  IWL_DEBUG_MAC80211(priv, "leave - not ready\n");
  mutex_unlock(&priv->mutex);
  return;
        }

 if (unlikely(!ctx->vif)) {
  IWL_DEBUG_MAC80211(priv, "leave - vif is NULL\n");
  mutex_unlock(&priv->mutex);
  return;
 }

 if (changes & BSS_CHANGED_BEACON_INT)
  force = 1;

 if (changes & BSS_CHANGED_QOS) {
  ctx->qos_data.qos_active = bss_conf->qos;
  iwlagn_update_qos(priv, ctx);
 }

 ctx->staging.assoc_id = cpu_to_le16(vif->bss_conf.aid);
 if (vif->bss_conf.use_short_preamble)
  ctx->staging.flags |= RXON_FLG_SHORT_PREAMBLE_MSK;
 else
  ctx->staging.flags &= ~RXON_FLG_SHORT_PREAMBLE_MSK;

 if (changes & BSS_CHANGED_ASSOC) {
  if (bss_conf->assoc) {
   priv->timestamp = bss_conf->sync_tsf;
   ctx->staging.filter_flags |= RXON_FILTER_ASSOC_MSK;
  } else {
   ctx->staging.filter_flags &= ~RXON_FILTER_ASSOC_MSK;

   if (ctx->ctxid == IWL_RXON_CTX_BSS)
    priv->have_rekey_data = 0;
  }

  iwlagn_bt_coex_rssi_monitor(priv);
 }

 if (ctx->ht.enabled) {
  ctx->ht.protection = bss_conf->ht_operation_mode &
     IEEE80211_HT_OP_MODE_PROTECTION;
  ctx->ht.non_gf_sta_present = !!(bss_conf->ht_operation_mode &
     IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT);
  iwlagn_check_needed_chains(priv, ctx, bss_conf);
  iwl_set_rxon_ht(priv, &priv->current_ht_config);
 }

 iwlagn_set_rxon_chain(priv, ctx);

 if (bss_conf->use_cts_prot && (priv->band != NL80211_BAND_5GHZ))
  ctx->staging.flags |= RXON_FLG_TGG_PROTECT_MSK;
 else
  ctx->staging.flags &= ~RXON_FLG_TGG_PROTECT_MSK;

 if (bss_conf->use_cts_prot)
  ctx->staging.flags |= RXON_FLG_SELF_CTS_EN;
 else
  ctx->staging.flags &= ~RXON_FLG_SELF_CTS_EN;

 memcpy(ctx->staging.bssid_addr, bss_conf->bssid, ETH_ALEN);

 if (vif->type == NL80211_IFTYPE_AP ||
     vif->type == NL80211_IFTYPE_ADHOC) {
  if (vif->bss_conf.enable_beacon) {
   ctx->staging.filter_flags |= RXON_FILTER_ASSOC_MSK;
   priv->beacon_ctx = ctx;
  } else {
   ctx->staging.filter_flags &= ~RXON_FILTER_ASSOC_MSK;
   priv->beacon_ctx = ((void*)0);
  }
 }
 if (vif->type == NL80211_IFTYPE_STATION) {
  if (!bss_conf->assoc)
   ctx->staging.filter_flags |= RXON_FILTER_BCON_AWARE_MSK;
  else
   ctx->staging.filter_flags &=
          ~RXON_FILTER_BCON_AWARE_MSK;
 }

 if (force || memcmp(&ctx->staging, &ctx->active, sizeof(ctx->staging)))
  iwlagn_commit_rxon(priv, ctx);

 if (changes & BSS_CHANGED_ASSOC && bss_conf->assoc) {





  if (priv->chain_noise_data.state == IWL_CHAIN_NOISE_DONE)
   iwl_power_update_mode(priv, 0);


  iwlagn_chain_noise_reset(priv);
  priv->start_calib = 1;
 }

 if (changes & BSS_CHANGED_IBSS) {
  ret = iwlagn_manage_ibss_station(priv, vif,
       bss_conf->ibss_joined);
  if (ret)
   IWL_ERR(priv, "failed to %s IBSS station %pM\n",
    bss_conf->ibss_joined ? "add" : "remove",
    bss_conf->bssid);
 }

 if (changes & BSS_CHANGED_BEACON && priv->beacon_ctx == ctx) {
  if (iwlagn_update_beacon(priv, vif))
   IWL_ERR(priv, "Error updating beacon\n");
 }

 mutex_unlock(&priv->mutex);
}
