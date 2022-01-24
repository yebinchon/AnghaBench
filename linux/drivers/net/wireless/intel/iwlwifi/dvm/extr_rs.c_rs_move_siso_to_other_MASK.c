#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct iwl_scale_tbl_info {int action; int is_SGI; int* expected_tpt; int /*<<< orphan*/  lq_type; int /*<<< orphan*/  ant_type; int /*<<< orphan*/  current_rate; int /*<<< orphan*/  is_ht40; struct iwl_rate_scale_data* win; } ;
struct iwl_rate_scale_data {int /*<<< orphan*/  success_ratio; } ;
struct TYPE_3__ {int tx_chains_num; } ;
struct iwl_priv {int bt_traffic_load; scalar_t__ bt_full_concurrent; TYPE_2__* nvm_data; TYPE_1__ hw_params; } ;
struct iwl_lq_sta {int is_green; size_t active_tbl; int last_tpt; int search_better_tbl; int /*<<< orphan*/  action_counter; struct iwl_scale_tbl_info* lq_info; } ;
struct ieee80211_sta_ht_cap {int cap; } ;
struct ieee80211_sta {struct ieee80211_sta_ht_cap ht_cap; } ;
struct ieee80211_conf {int dummy; } ;
typedef  int s32 ;
struct TYPE_4__ {int valid_tx_ant; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANT_AB ; 
 int /*<<< orphan*/  ANT_ABC ; 
 int /*<<< orphan*/  ANT_AC ; 
 int /*<<< orphan*/  ANT_BC ; 
 int IEEE80211_HT_CAP_SGI_20 ; 
 int IEEE80211_HT_CAP_SGI_40 ; 
 scalar_t__ IWL_ANT_OK_SINGLE ; 
#define  IWL_BT_COEX_TRAFFIC_LOAD_CONTINUOUS 138 
#define  IWL_BT_COEX_TRAFFIC_LOAD_HIGH 137 
#define  IWL_BT_COEX_TRAFFIC_LOAD_LOW 136 
#define  IWL_BT_COEX_TRAFFIC_LOAD_NONE 135 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,...) ; 
 int IWL_LEGACY_SWITCH_ANTENNA2 ; 
 int const IWL_LEGACY_SWITCH_MIMO3_ABC ; 
 int IWL_RATE_COUNT ; 
 int /*<<< orphan*/  IWL_RS_GOOD_RATIO ; 
#define  IWL_SISO_SWITCH_ANTENNA1 134 
#define  IWL_SISO_SWITCH_ANTENNA2 133 
#define  IWL_SISO_SWITCH_GI 132 
#define  IWL_SISO_SWITCH_MIMO2_AB 131 
#define  IWL_SISO_SWITCH_MIMO2_AC 130 
#define  IWL_SISO_SWITCH_MIMO2_BC 129 
#define  IWL_SISO_SWITCH_MIMO3_ABC 128 
 int /*<<< orphan*/  LQ_NONE ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_scale_tbl_info*,struct iwl_scale_tbl_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_priv*,struct iwl_scale_tbl_info*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ; 
 int FUNC8 (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ; 
 int FUNC9 (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,struct iwl_scale_tbl_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *,struct iwl_scale_tbl_info*) ; 

__attribute__((used)) static void FUNC11(struct iwl_priv *priv,
				  struct iwl_lq_sta *lq_sta,
				  struct ieee80211_conf *conf,
				  struct ieee80211_sta *sta, int index)
{
	u8 is_green = lq_sta->is_green;
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
	case IWL_BT_COEX_TRAFFIC_LOAD_NONE:
		/* nothing */
		break;
	case IWL_BT_COEX_TRAFFIC_LOAD_LOW:
		/* avoid antenna B unless MIMO */
		if (tbl->action == IWL_SISO_SWITCH_ANTENNA2)
			tbl->action = IWL_SISO_SWITCH_MIMO2_AB;
		break;
	case IWL_BT_COEX_TRAFFIC_LOAD_HIGH:
	case IWL_BT_COEX_TRAFFIC_LOAD_CONTINUOUS:
		/* avoid antenna B and MIMO */
		valid_tx_ant =
			FUNC2(priv->nvm_data->valid_tx_ant);
		if (tbl->action != IWL_SISO_SWITCH_ANTENNA1)
			tbl->action = IWL_SISO_SWITCH_ANTENNA1;
		break;
	default:
		FUNC1(priv, "Invalid BT load %d\n", priv->bt_traffic_load);
		break;
	}

	if (FUNC3(priv) == IWL_ANT_OK_SINGLE &&
	    tbl->action > IWL_SISO_SWITCH_ANTENNA2) {
		/* stay in SISO */
		tbl->action = IWL_SISO_SWITCH_ANTENNA1;
	}

	/* configure as 1x1 if bt full concurrency */
	if (priv->bt_full_concurrent) {
		valid_tx_ant =
			FUNC2(priv->nvm_data->valid_tx_ant);
		if (tbl->action >= IWL_LEGACY_SWITCH_ANTENNA2)
			tbl->action = IWL_SISO_SWITCH_ANTENNA1;
	}

	start_action = tbl->action;
	for (;;) {
		lq_sta->action_counter++;
		switch (tbl->action) {
		case IWL_SISO_SWITCH_ANTENNA1:
		case IWL_SISO_SWITCH_ANTENNA2:
			FUNC0(priv, "LQ: SISO toggle Antenna\n");
			if ((tbl->action == IWL_SISO_SWITCH_ANTENNA1 &&
						tx_chains_num <= 1) ||
			    (tbl->action == IWL_SISO_SWITCH_ANTENNA2 &&
						tx_chains_num <= 2))
				break;

			if (window->success_ratio >= IWL_RS_GOOD_RATIO &&
			    !priv->bt_full_concurrent &&
			    priv->bt_traffic_load ==
					IWL_BT_COEX_TRAFFIC_LOAD_NONE)
				break;

			FUNC4(search_tbl, tbl, sz);
			if (FUNC10(valid_tx_ant,
				       &search_tbl->current_rate, search_tbl)) {
				update_search_tbl_counter = 1;
				goto out;
			}
			break;
		case IWL_SISO_SWITCH_MIMO2_AB:
		case IWL_SISO_SWITCH_MIMO2_AC:
		case IWL_SISO_SWITCH_MIMO2_BC:
			FUNC0(priv, "LQ: SISO switch to MIMO2\n");
			FUNC4(search_tbl, tbl, sz);
			search_tbl->is_SGI = 0;

			if (tbl->action == IWL_SISO_SWITCH_MIMO2_AB)
				search_tbl->ant_type = ANT_AB;
			else if (tbl->action == IWL_SISO_SWITCH_MIMO2_AC)
				search_tbl->ant_type = ANT_AC;
			else
				search_tbl->ant_type = ANT_BC;

			if (!FUNC6(valid_tx_ant, search_tbl->ant_type))
				break;

			ret = FUNC8(priv, lq_sta, conf, sta,
						 search_tbl, index);
			if (!ret)
				goto out;
			break;
		case IWL_SISO_SWITCH_GI:
			if (!tbl->is_ht40 && !(ht_cap->cap &
						IEEE80211_HT_CAP_SGI_20))
				break;
			if (tbl->is_ht40 && !(ht_cap->cap &
						IEEE80211_HT_CAP_SGI_40))
				break;

			FUNC0(priv, "LQ: SISO toggle SGI/NGI\n");

			FUNC4(search_tbl, tbl, sz);
			if (is_green) {
				if (!tbl->is_SGI)
					break;
				else
					FUNC1(priv,
						"SGI was set in GF+SISO\n");
			}
			search_tbl->is_SGI = !tbl->is_SGI;
			FUNC7(lq_sta, search_tbl);
			if (tbl->is_SGI) {
				s32 tpt = lq_sta->last_tpt / 100;
				if (tpt >= search_tbl->expected_tpt[index])
					break;
			}
			search_tbl->current_rate =
				FUNC5(priv, search_tbl,
						      index, is_green);
			update_search_tbl_counter = 1;
			goto out;
		case IWL_SISO_SWITCH_MIMO3_ABC:
			FUNC0(priv, "LQ: SISO switch to MIMO3\n");
			FUNC4(search_tbl, tbl, sz);
			search_tbl->is_SGI = 0;
			search_tbl->ant_type = ANT_ABC;

			if (!FUNC6(valid_tx_ant, search_tbl->ant_type))
				break;

			ret = FUNC9(priv, lq_sta, conf, sta,
						 search_tbl, index);
			if (!ret)
				goto out;
			break;
		}
		tbl->action++;
		if (tbl->action > IWL_LEGACY_SWITCH_MIMO3_ABC)
			tbl->action = IWL_SISO_SWITCH_ANTENNA1;

		if (tbl->action == start_action)
			break;
	}
	search_tbl->lq_type = LQ_NONE;
	return;

 out:
	lq_sta->search_better_tbl = 1;
	tbl->action++;
	if (tbl->action > IWL_SISO_SWITCH_MIMO3_ABC)
		tbl->action = IWL_SISO_SWITCH_ANTENNA1;
	if (update_search_tbl_counter)
		search_tbl->action = tbl->action;
}