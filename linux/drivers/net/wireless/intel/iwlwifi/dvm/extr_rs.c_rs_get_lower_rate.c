
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_scale_tbl_info {int lq_type; int max_search; scalar_t__ is_SGI; scalar_t__ is_ht40; int ant_type; } ;
struct iwl_priv {TYPE_1__* nvm_data; } ;
struct iwl_lq_sta {size_t is_green; scalar_t__ band; int supp_rates; struct iwl_priv* drv; } ;
typedef int s32 ;
struct TYPE_2__ {int valid_tx_ant; } ;


 int IWL_FIRST_OFDM_RATE ;
 int IWL_MAX_SEARCH ;
 int IWL_RATE_INVALID ;
 int LQ_A ;
 int LQ_G ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int first_antenna (int ) ;
 scalar_t__ is_legacy (int ) ;
 int num_of_ant (int ) ;
 int rate_n_flags_from_tbl (struct iwl_priv*,struct iwl_scale_tbl_info*,int,size_t) ;
 int rs_get_adjacent_rate (struct iwl_priv*,size_t,int,int ) ;
 int rs_get_supported_rates (struct iwl_lq_sta*,int *,int ) ;
 size_t* rs_ht_to_legacy ;

__attribute__((used)) static u32 rs_get_lower_rate(struct iwl_lq_sta *lq_sta,
        struct iwl_scale_tbl_info *tbl,
        u8 scale_index, u8 ht_possible)
{
 s32 low;
 u16 rate_mask;
 u16 high_low;
 u8 switch_to_legacy = 0;
 u8 is_green = lq_sta->is_green;
 struct iwl_priv *priv = lq_sta->drv;




 if (!is_legacy(tbl->lq_type) && (!ht_possible || !scale_index)) {
  switch_to_legacy = 1;
  scale_index = rs_ht_to_legacy[scale_index];
  if (lq_sta->band == NL80211_BAND_5GHZ)
   tbl->lq_type = LQ_A;
  else
   tbl->lq_type = LQ_G;

  if (num_of_ant(tbl->ant_type) > 1)
   tbl->ant_type =
       first_antenna(priv->nvm_data->valid_tx_ant);

  tbl->is_ht40 = 0;
  tbl->is_SGI = 0;
  tbl->max_search = IWL_MAX_SEARCH;
 }

 rate_mask = rs_get_supported_rates(lq_sta, ((void*)0), tbl->lq_type);


 if (is_legacy(tbl->lq_type)) {

  if (lq_sta->band == NL80211_BAND_5GHZ)
   rate_mask = (u16)(rate_mask &
      (lq_sta->supp_rates << IWL_FIRST_OFDM_RATE));
  else
   rate_mask = (u16)(rate_mask & lq_sta->supp_rates);
 }


 if (switch_to_legacy && (rate_mask & (1 << scale_index))) {
  low = scale_index;
  goto out;
 }

 high_low = rs_get_adjacent_rate(lq_sta->drv, scale_index, rate_mask,
     tbl->lq_type);
 low = high_low & 0xff;

 if (low == IWL_RATE_INVALID)
  low = scale_index;

out:
 return rate_n_flags_from_tbl(lq_sta->drv, tbl, low, is_green);
}
