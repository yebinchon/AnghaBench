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
struct rs_rate {size_t index; int ldpc; int sgi; int /*<<< orphan*/  ant; int /*<<< orphan*/  type; int /*<<< orphan*/  bw; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {struct iwl_mvm* drv; } ;
struct iwl_lq_sta {scalar_t__ band; TYPE_1__ pers; } ;

/* Variables and functions */
 size_t IWL_RATE_MCS_0_INDEX ; 
 size_t IWL_RATE_MCS_9_INDEX ; 
 int /*<<< orphan*/  LQ_HT_SISO ; 
 int /*<<< orphan*/  LQ_LEGACY_A ; 
 int /*<<< orphan*/  LQ_LEGACY_G ; 
 int /*<<< orphan*/  LQ_VHT_SISO ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  RATE_MCS_CHAN_WIDTH_20 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rs_rate*) ; 
 scalar_t__ FUNC3 (struct rs_rate*) ; 
 scalar_t__ FUNC4 (struct rs_rate*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_lq_sta*,struct rs_rate*) ; 
 size_t* rs_ht_to_legacy ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_lq_sta*,struct rs_rate*) ; 

__attribute__((used)) static void FUNC9(struct iwl_lq_sta *lq_sta,
					  struct rs_rate *rate)
{
	struct iwl_mvm *mvm = lq_sta->pers.drv;

	if (FUNC2(rate)) {
		/* No column to downgrade from Legacy */
		return;
	} else if (FUNC3(rate)) {
		/* Downgrade to Legacy if we were in SISO */
		if (lq_sta->band == NL80211_BAND_5GHZ)
			rate->type = LQ_LEGACY_A;
		else
			rate->type = LQ_LEGACY_G;

		rate->bw = RATE_MCS_CHAN_WIDTH_20;

		FUNC0(rate->index < IWL_RATE_MCS_0_INDEX ||
			     rate->index > IWL_RATE_MCS_9_INDEX);

		rate->index = rs_ht_to_legacy[rate->index];
		rate->ldpc = false;
	} else {
		/* Downgrade to SISO with same MCS if in MIMO  */
		rate->type = FUNC4(rate) ?
			LQ_VHT_SISO : LQ_HT_SISO;
	}

	if (FUNC6(rate->ant) > 1)
		rate->ant = FUNC1(FUNC5(mvm));

	/* Relevant in both switching to SISO or Legacy */
	rate->sgi = false;

	if (!FUNC8(lq_sta, rate))
		FUNC7(lq_sta, rate);
}