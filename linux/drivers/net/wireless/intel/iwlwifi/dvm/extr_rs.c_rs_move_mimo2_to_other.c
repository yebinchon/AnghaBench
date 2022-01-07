
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_scale_tbl_info {int action; int is_SGI; int* expected_tpt; int lq_type; int ant_type; int current_rate; int is_ht40; struct iwl_rate_scale_data* win; } ;
struct iwl_rate_scale_data {int success_ratio; } ;
struct TYPE_4__ {int tx_chains_num; } ;
struct iwl_priv {int bt_traffic_load; scalar_t__ bt_full_concurrent; TYPE_2__ hw_params; TYPE_1__* nvm_data; } ;
struct iwl_lq_sta {size_t active_tbl; int last_tpt; int search_better_tbl; int action_counter; struct iwl_scale_tbl_info* lq_info; int is_green; } ;
struct ieee80211_sta_ht_cap {int cap; } ;
struct ieee80211_sta {struct ieee80211_sta_ht_cap ht_cap; } ;
struct ieee80211_conf {int dummy; } ;
typedef int s8 ;
typedef int s32 ;
struct TYPE_3__ {int valid_tx_ant; } ;


 int ANT_A ;
 int ANT_ABC ;
 int ANT_B ;
 int ANT_C ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 scalar_t__ IWL_ANT_OK_SINGLE ;




 int IWL_DEBUG_RATE (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*,int) ;







 int IWL_RATE_COUNT ;
 int IWL_RS_GOOD_RATIO ;
 int LQ_NONE ;
 scalar_t__ iwl_tx_ant_restriction (struct iwl_priv*) ;
 int memcpy (struct iwl_scale_tbl_info*,struct iwl_scale_tbl_info*,int) ;
 int rate_n_flags_from_tbl (struct iwl_priv*,struct iwl_scale_tbl_info*,int,int ) ;
 int rs_is_valid_ant (int,int ) ;
 int rs_set_expected_tpt_table (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ;
 int rs_switch_to_mimo3 (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ;
 int rs_switch_to_siso (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ;
 int rs_toggle_antenna (int,int *,struct iwl_scale_tbl_info*) ;

__attribute__((used)) static void rs_move_mimo2_to_other(struct iwl_priv *priv,
       struct iwl_lq_sta *lq_sta,
       struct ieee80211_conf *conf,
       struct ieee80211_sta *sta, int index)
{
 s8 is_green = lq_sta->is_green;
 struct iwl_scale_tbl_info *tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);
 struct iwl_scale_tbl_info *search_tbl =
    &(lq_sta->lq_info[(1 - lq_sta->active_tbl)]);
 struct iwl_rate_scale_data *window = &(tbl->win[index]);
 struct ieee80211_sta_ht_cap *ht_cap = &sta->ht_cap;
 u32 sz = (sizeof(struct iwl_scale_tbl_info) -
    (sizeof(struct iwl_rate_scale_data) * IWL_RATE_COUNT));
 u8 start_action;
 u8 valid_tx_ant = priv->nvm_data->valid_tx_ant;
 u8 tx_chains_num = priv->hw_params.tx_chains_num;
 u8 update_search_tbl_counter = 0;
 int ret;

 switch (priv->bt_traffic_load) {
 case 135:

  break;
 case 137:
 case 138:

  if (tbl->action != 130)
   tbl->action = 130;
  break;
 case 136:

  if (tbl->action == 129 ||
      tbl->action == 128)
   tbl->action = 130;
  break;
 default:
  IWL_ERR(priv, "Invalid BT load %d\n", priv->bt_traffic_load);
  break;
 }

 if ((iwl_tx_ant_restriction(priv) == IWL_ANT_OK_SINGLE) &&
     (tbl->action < 130 ||
      tbl->action > 128)) {

  tbl->action = 130;
 }


 if (priv->bt_full_concurrent &&
     (tbl->action < 130 ||
      tbl->action > 128))
  tbl->action = 130;

 start_action = tbl->action;
 for (;;) {
  lq_sta->action_counter++;
  switch (tbl->action) {
  case 134:
  case 133:
   IWL_DEBUG_RATE(priv, "LQ: MIMO2 toggle Antennas\n");

   if (tx_chains_num <= 2)
    break;

   if (window->success_ratio >= IWL_RS_GOOD_RATIO)
    break;

   memcpy(search_tbl, tbl, sz);
   if (rs_toggle_antenna(valid_tx_ant,
           &search_tbl->current_rate, search_tbl)) {
    update_search_tbl_counter = 1;
    goto out;
   }
   break;
  case 130:
  case 129:
  case 128:
   IWL_DEBUG_RATE(priv, "LQ: MIMO2 switch to SISO\n");


   memcpy(search_tbl, tbl, sz);

   if (tbl->action == 130)
    search_tbl->ant_type = ANT_A;
   else if (tbl->action == 129)
    search_tbl->ant_type = ANT_B;
   else
    search_tbl->ant_type = ANT_C;

   if (!rs_is_valid_ant(valid_tx_ant, search_tbl->ant_type))
    break;

   ret = rs_switch_to_siso(priv, lq_sta, conf, sta,
       search_tbl, index);
   if (!ret)
    goto out;

   break;

  case 132:
   if (!tbl->is_ht40 && !(ht_cap->cap &
      IEEE80211_HT_CAP_SGI_20))
    break;
   if (tbl->is_ht40 && !(ht_cap->cap &
      IEEE80211_HT_CAP_SGI_40))
    break;

   IWL_DEBUG_RATE(priv, "LQ: MIMO2 toggle SGI/NGI\n");


   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = !tbl->is_SGI;
   rs_set_expected_tpt_table(lq_sta, search_tbl);






   if (tbl->is_SGI) {
    s32 tpt = lq_sta->last_tpt / 100;
    if (tpt >= search_tbl->expected_tpt[index])
     break;
   }
   search_tbl->current_rate =
    rate_n_flags_from_tbl(priv, search_tbl,
            index, is_green);
   update_search_tbl_counter = 1;
   goto out;

  case 131:
   IWL_DEBUG_RATE(priv, "LQ: MIMO2 switch to MIMO3\n");
   memcpy(search_tbl, tbl, sz);
   search_tbl->is_SGI = 0;
   search_tbl->ant_type = ANT_ABC;

   if (!rs_is_valid_ant(valid_tx_ant, search_tbl->ant_type))
    break;

   ret = rs_switch_to_mimo3(priv, lq_sta, conf, sta,
       search_tbl, index);
   if (!ret)
    goto out;

   break;
  }
  tbl->action++;
  if (tbl->action > 131)
   tbl->action = 134;

  if (tbl->action == start_action)
   break;
 }
 search_tbl->lq_type = LQ_NONE;
 return;
 out:
 lq_sta->search_better_tbl = 1;
 tbl->action++;
 if (tbl->action > 131)
  tbl->action = 134;
 if (update_search_tbl_counter)
  search_tbl->action = tbl->action;

}
