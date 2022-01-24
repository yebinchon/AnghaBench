#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct rs_rate {scalar_t__ ant; } ;
struct iwl_scale_tbl_info {int /*<<< orphan*/  column; struct rs_rate rate; } ;
struct iwl_mvm {TYPE_3__* nvm_data; TYPE_2__* fw; } ;
struct TYPE_4__ {int /*<<< orphan*/  chains; } ;
struct iwl_lq_sta {size_t active_tbl; int /*<<< orphan*/  lq; TYPE_1__ pers; struct iwl_scale_tbl_info* lq_info; int /*<<< orphan*/  search_better_tbl; } ;
struct ieee80211_sta {int dummy; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_6__ {int /*<<< orphan*/  valid_tx_ant; } ;
struct TYPE_5__ {int /*<<< orphan*/  valid_tx_ant; } ;

/* Variables and functions */
 scalar_t__ ANT_A ; 
 scalar_t__ ANT_B ; 
 int /*<<< orphan*/  ANT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_sta*,struct iwl_lq_sta*,struct rs_rate*) ; 
 int /*<<< orphan*/  FUNC3 (struct rs_rate*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_sta*,struct iwl_lq_sta*,int,struct rs_rate*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_sta*,struct iwl_lq_sta*) ; 
 size_t FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ; 

__attribute__((used)) static void FUNC8(struct iwl_mvm *mvm,
			     struct ieee80211_sta *sta,
			     struct iwl_lq_sta *lq_sta,
			     enum nl80211_band band)
{
	struct iwl_scale_tbl_info *tbl;
	struct rs_rate *rate;
	u8 active_tbl = 0;

	if (!sta || !lq_sta)
		return;

	if (!lq_sta->search_better_tbl)
		active_tbl = lq_sta->active_tbl;
	else
		active_tbl = FUNC6(lq_sta->active_tbl);

	tbl = &(lq_sta->lq_info[active_tbl]);
	rate = &tbl->rate;

	FUNC4(mvm, sta, lq_sta, band, rate);
	FUNC5(mvm, sta, lq_sta);

	FUNC0(rate->ant != ANT_A && rate->ant != ANT_B,
		  "ant: 0x%x, chains 0x%x, fw tx ant: 0x%x, nvm tx ant: 0x%x\n",
		  rate->ant, lq_sta->pers.chains, mvm->fw->valid_tx_ant,
		  mvm->nvm_data ? mvm->nvm_data->valid_tx_ant : ANT_INVALID);

	tbl->column = FUNC3(rate);

	FUNC7(lq_sta, tbl);
	FUNC2(mvm, sta, lq_sta, rate);
	/* TODO restore station should remember the lq cmd */
	FUNC1(mvm, &lq_sta->lq);
}