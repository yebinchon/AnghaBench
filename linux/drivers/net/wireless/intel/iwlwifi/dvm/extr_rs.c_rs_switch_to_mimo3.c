
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct iwl_station_priv {struct iwl_rxon_context* ctx; } ;
struct iwl_scale_tbl_info {int is_ht40; int current_rate; int max_search; scalar_t__ action; int is_dup; int lq_type; } ;
struct iwl_rxon_context {int dummy; } ;
struct TYPE_4__ {int tx_chains_num; } ;
struct iwl_priv {TYPE_2__ hw_params; } ;
struct iwl_lq_sta {int is_green; int active_mimo3_rate; int is_dup; } ;
struct TYPE_3__ {int ht_supported; } ;
struct ieee80211_sta {scalar_t__ smps_mode; TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ieee80211_conf {int dummy; } ;
typedef int s8 ;
typedef int s32 ;


 scalar_t__ IEEE80211_SMPS_STATIC ;
 int IWL_DEBUG_RATE (struct iwl_priv*,char*,...) ;
 int IWL_MAX_11N_MIMO3_SEARCH ;
 int IWL_RATE_INVALID ;
 int LQ_MIMO3 ;
 int conf_is_ht (struct ieee80211_conf*) ;
 scalar_t__ iwl_is_ht40_tx_allowed (struct iwl_priv*,struct iwl_rxon_context*,struct ieee80211_sta*) ;
 int rate_n_flags_from_tbl (struct iwl_priv*,struct iwl_scale_tbl_info*,int,int) ;
 int rs_get_best_rate (struct iwl_priv*,struct iwl_lq_sta*,struct iwl_scale_tbl_info*,int,int) ;
 int rs_set_expected_tpt_table (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ;

__attribute__((used)) static int rs_switch_to_mimo3(struct iwl_priv *priv,
        struct iwl_lq_sta *lq_sta,
        struct ieee80211_conf *conf,
        struct ieee80211_sta *sta,
        struct iwl_scale_tbl_info *tbl, int index)
{
 u16 rate_mask;
 s32 rate;
 s8 is_green = lq_sta->is_green;
 struct iwl_station_priv *sta_priv = (void *)sta->drv_priv;
 struct iwl_rxon_context *ctx = sta_priv->ctx;

 if (!conf_is_ht(conf) || !sta->ht_cap.ht_supported)
  return -1;

 if (sta->smps_mode == IEEE80211_SMPS_STATIC)
  return -1;


 if (priv->hw_params.tx_chains_num < 3)
  return -1;

 IWL_DEBUG_RATE(priv, "LQ: try to switch to MIMO3\n");

 tbl->lq_type = LQ_MIMO3;
 tbl->is_dup = lq_sta->is_dup;
 tbl->action = 0;
 tbl->max_search = IWL_MAX_11N_MIMO3_SEARCH;
 rate_mask = lq_sta->active_mimo3_rate;

 if (iwl_is_ht40_tx_allowed(priv, ctx, sta))
  tbl->is_ht40 = 1;
 else
  tbl->is_ht40 = 0;

 rs_set_expected_tpt_table(lq_sta, tbl);

 rate = rs_get_best_rate(priv, lq_sta, tbl, rate_mask, index);

 IWL_DEBUG_RATE(priv, "LQ: MIMO3 best rate %d mask %X\n",
  rate, rate_mask);
 if ((rate == IWL_RATE_INVALID) || !((1 << rate) & rate_mask)) {
  IWL_DEBUG_RATE(priv, "Can't switch with index %d rate mask %x\n",
      rate, rate_mask);
  return -1;
 }
 tbl->current_rate = rate_n_flags_from_tbl(priv, tbl, rate, is_green);

 IWL_DEBUG_RATE(priv, "LQ: Switch to new mcs %X index is green %X\n",
       tbl->current_rate, is_green);
 return 0;
}
