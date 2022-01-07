
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct il_scale_tbl_info {int action; int is_SGI; int* expected_tpt; int lq_type; int current_rate; int is_ht40; int ant_type; struct il_rate_scale_data* win; } ;
struct il_rate_scale_data {int success_ratio; } ;
struct TYPE_2__ {int valid_tx_ant; int tx_chains_num; } ;
struct il_priv {TYPE_1__ hw_params; } ;
struct il_lq_sta {int is_green; size_t active_tbl; int last_tpt; int search_better_tbl; int action_counter; struct il_scale_tbl_info* lq_info; } ;
struct ieee80211_sta_ht_cap {int cap; } ;
struct ieee80211_sta {struct ieee80211_sta_ht_cap ht_cap; } ;
struct ieee80211_conf {int dummy; } ;
typedef int s32 ;


 int ANT_AB ;
 int ANT_AC ;
 int ANT_BC ;
 int D_RATE (char*) ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IL_ERR (char*) ;
 int IL_RS_GOOD_RATIO ;






 int LQ_NONE ;
 int RATE_COUNT ;
 int il4965_rate_n_flags_from_tbl (struct il_priv*,struct il_scale_tbl_info*,int,int) ;
 int il4965_rs_is_valid_ant (int,int ) ;
 int il4965_rs_set_expected_tpt_table (struct il_lq_sta*,struct il_scale_tbl_info*) ;
 int il4965_rs_switch_to_mimo2 (struct il_priv*,struct il_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,struct il_scale_tbl_info*,int) ;
 int il4965_rs_toggle_antenna (int,int *,struct il_scale_tbl_info*) ;
 int memcpy (struct il_scale_tbl_info*,struct il_scale_tbl_info*,int) ;

__attribute__((used)) static int
il4965_rs_move_siso_to_other(struct il_priv *il, struct il_lq_sta *lq_sta,
        struct ieee80211_conf *conf,
        struct ieee80211_sta *sta, int idx)
{
 u8 is_green = lq_sta->is_green;
 struct il_scale_tbl_info *tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);
 struct il_scale_tbl_info *search_tbl =
     &(lq_sta->lq_info[(1 - lq_sta->active_tbl)]);
 struct il_rate_scale_data *win = &(tbl->win[idx]);
 struct ieee80211_sta_ht_cap *ht_cap = &sta->ht_cap;
 u32 sz =
     (sizeof(struct il_scale_tbl_info) -
      (sizeof(struct il_rate_scale_data) * RATE_COUNT));
 u8 start_action;
 u8 valid_tx_ant = il->hw_params.valid_tx_ant;
 u8 tx_chains_num = il->hw_params.tx_chains_num;
 u8 update_search_tbl_counter = 0;
 int ret;

 start_action = tbl->action;

 for (;;) {
  lq_sta->action_counter++;
  switch (tbl->action) {
  case 133:
  case 132:
   D_RATE("LQ: SISO toggle Antenna\n");
   if ((tbl->action == 133 &&
        tx_chains_num <= 1) ||
       (tbl->action == 132 &&
        tx_chains_num <= 2))
    break;

   if (win->success_ratio >= IL_RS_GOOD_RATIO)
    break;

   memcpy(search_tbl, tbl, sz);
   if (il4965_rs_toggle_antenna
       (valid_tx_ant, &search_tbl->current_rate,
        search_tbl)) {
    update_search_tbl_counter = 1;
    goto out;
   }
   break;
  case 130:
  case 129:
  case 128:
   D_RATE("LQ: SISO switch to MIMO2\n");
   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = 0;

   if (tbl->action == 130)
    search_tbl->ant_type = ANT_AB;
   else if (tbl->action == 129)
    search_tbl->ant_type = ANT_AC;
   else
    search_tbl->ant_type = ANT_BC;

   if (!il4965_rs_is_valid_ant
       (valid_tx_ant, search_tbl->ant_type))
    break;

   ret =
       il4965_rs_switch_to_mimo2(il, lq_sta, conf, sta,
            search_tbl, idx);
   if (!ret)
    goto out;
   break;
  case 131:
   if (!tbl->is_ht40 &&
       !(ht_cap->cap & IEEE80211_HT_CAP_SGI_20))
    break;
   if (tbl->is_ht40 &&
       !(ht_cap->cap & IEEE80211_HT_CAP_SGI_40))
    break;

   D_RATE("LQ: SISO toggle SGI/NGI\n");

   memcpy(search_tbl, tbl, sz);
   if (is_green) {
    if (!tbl->is_SGI)
     break;
    else
     IL_ERR("SGI was set in GF+SISO\n");
   }
   search_tbl->is_SGI = !tbl->is_SGI;
   il4965_rs_set_expected_tpt_table(lq_sta, search_tbl);
   if (tbl->is_SGI) {
    s32 tpt = lq_sta->last_tpt / 100;
    if (tpt >= search_tbl->expected_tpt[idx])
     break;
   }
   search_tbl->current_rate =
       il4965_rate_n_flags_from_tbl(il, search_tbl, idx,
        is_green);
   update_search_tbl_counter = 1;
   goto out;
  }
  tbl->action++;
  if (tbl->action > 131)
   tbl->action = 133;

  if (tbl->action == start_action)
   break;
 }
 search_tbl->lq_type = LQ_NONE;
 return 0;

out:
 lq_sta->search_better_tbl = 1;
 tbl->action++;
 if (tbl->action > 131)
  tbl->action = 133;
 if (update_search_tbl_counter)
  search_tbl->action = tbl->action;

 return 0;
}
