#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct iwl_scale_tbl_info {int /*<<< orphan*/  lq_type; int /*<<< orphan*/  max_search; scalar_t__ is_SGI; scalar_t__ is_ht40; int /*<<< orphan*/  ant_type; } ;
struct iwl_priv {TYPE_1__* nvm_data; } ;
struct iwl_lq_sta {size_t is_green; scalar_t__ band; int supp_rates; struct iwl_priv* drv; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  valid_tx_ant; } ;

/* Variables and functions */
 int IWL_FIRST_OFDM_RATE ; 
 int /*<<< orphan*/  IWL_MAX_SEARCH ; 
 int IWL_RATE_INVALID ; 
 int /*<<< orphan*/  LQ_A ; 
 int /*<<< orphan*/  LQ_G ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,struct iwl_scale_tbl_info*,int,size_t) ; 
 int FUNC4 (struct iwl_priv*,size_t,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwl_lq_sta*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t* rs_ht_to_legacy ; 

__attribute__((used)) static u32 FUNC6(struct iwl_lq_sta *lq_sta,
			     struct iwl_scale_tbl_info *tbl,
			     u8 scale_index, u8 ht_possible)
{
	s32 low;
	u16 rate_mask;
	u16 high_low;
	u8 switch_to_legacy = 0;
	u8 is_green = lq_sta->is_green;
	struct iwl_priv *priv = lq_sta->drv;

	/* check if we need to switch from HT to legacy rates.
	 * assumption is that mandatory rates (1Mbps or 6Mbps)
	 * are always supported (spec demand) */
	if (!FUNC1(tbl->lq_type) && (!ht_possible || !scale_index)) {
		switch_to_legacy = 1;
		scale_index = rs_ht_to_legacy[scale_index];
		if (lq_sta->band == NL80211_BAND_5GHZ)
			tbl->lq_type = LQ_A;
		else
			tbl->lq_type = LQ_G;

		if (FUNC2(tbl->ant_type) > 1)
			tbl->ant_type =
			    FUNC0(priv->nvm_data->valid_tx_ant);

		tbl->is_ht40 = 0;
		tbl->is_SGI = 0;
		tbl->max_search = IWL_MAX_SEARCH;
	}

	rate_mask = FUNC5(lq_sta, NULL, tbl->lq_type);

	/* Mask with station rate restriction */
	if (FUNC1(tbl->lq_type)) {
		/* supp_rates has no CCK bits in A mode */
		if (lq_sta->band == NL80211_BAND_5GHZ)
			rate_mask  = (u16)(rate_mask &
			   (lq_sta->supp_rates << IWL_FIRST_OFDM_RATE));
		else
			rate_mask = (u16)(rate_mask & lq_sta->supp_rates);
	}

	/* If we switched from HT to legacy, check current rate */
	if (switch_to_legacy && (rate_mask & (1 << scale_index))) {
		low = scale_index;
		goto out;
	}

	high_low = FUNC4(lq_sta->drv, scale_index, rate_mask,
					tbl->lq_type);
	low = high_low & 0xff;

	if (low == IWL_RATE_INVALID)
		low = scale_index;

out:
	return FUNC3(lq_sta->drv, tbl, low, is_green);
}