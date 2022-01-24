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
typedef  int u32 ;
struct ieee80211_channel {scalar_t__ band; int center_freq; } ;
struct carl9170_rf_init_result {int /*<<< orphan*/  ret; } ;
struct carl9170_rf_init {int ht_settings; void* finiteLoopCount; void* delta_slope_coeff_man_shgi; void* delta_slope_coeff_exp_shgi; void* delta_slope_coeff_man; void* delta_slope_coeff_exp; void* freq; } ;
struct carl9170_phy_freq_params {int coeff_exp; int coeff_man; int coeff_exp_shgi; int coeff_man_shgi; } ;
struct TYPE_3__ {int tx_mask; } ;
struct ar9170 {int chan_fail; int heavy_clip; int ht_settings; struct ieee80211_channel* channel; TYPE_2__* hw; int /*<<< orphan*/  total_chan_fail; TYPE_1__ eeprom; } ;
typedef  int /*<<< orphan*/  rf_res ;
typedef  int /*<<< orphan*/  rf ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
typedef  enum carl9170_bw { ____Placeholder_carl9170_bw } carl9170_bw ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_PHY_REG_HEAVY_CLIP_ENABLE ; 
 int /*<<< orphan*/  AR9170_PHY_REG_TURBO ; 
 int AR9170_PHY_TURBO_FC_DYN2040_EN ; 
 int AR9170_PHY_TURBO_FC_DYN2040_PRI_CH ; 
 int AR9170_PHY_TURBO_FC_HT_EN ; 
 int AR9170_PHY_TURBO_FC_SHORT_GI_40 ; 
 int AR9170_PHY_TURBO_FC_SINGLE_HT_LTF1 ; 
 int AR9170_PHY_TURBO_FC_WALSH ; 
 int /*<<< orphan*/  AR9170_PWR_REG_RESET ; 
 int AR9170_PWR_RESET_BB_COLD_RESET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int CARL9170FW_PHY_HT_DYN2040 ; 
 int CARL9170FW_PHY_HT_ENABLE ; 
 int /*<<< orphan*/  CARL9170FW_PHY_HT_EXT_CHAN_OFF ; 
#define  CARL9170_BW_20 130 
#define  CARL9170_BW_40_ABOVE 129 
#define  CARL9170_BW_40_BELOW 128 
 int /*<<< orphan*/  CARL9170_CMD_FREQ_START ; 
 int /*<<< orphan*/  CARL9170_CMD_RF_INIT ; 
 int /*<<< orphan*/  CARL9170_RR_TOO_MANY_PHY_ERRORS ; 
 int ENOSYS ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct ar9170*,int /*<<< orphan*/ ,int,struct carl9170_rf_init*,int,struct carl9170_rf_init_result*) ; 
 struct carl9170_phy_freq_params* FUNC3 (struct ieee80211_channel*,int) ; 
 int FUNC4 (struct ar9170*,scalar_t__) ; 
 int FUNC5 (struct ar9170*,int,int,int) ; 
 int FUNC6 (struct ar9170*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ar9170*,struct ieee80211_channel*) ; 
 int FUNC9 (struct ar9170*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC10 (struct ar9170*,int,int) ; 
 int FUNC11 (struct ar9170*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 () ; 
 int FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC19(struct ar9170 *ar, struct ieee80211_channel *channel,
			 enum nl80211_channel_type _bw)
{
	const struct carl9170_phy_freq_params *freqpar;
	struct carl9170_rf_init_result rf_res;
	struct carl9170_rf_init rf;
	u32 tmp, offs = 0, new_ht = 0;
	int err;
	enum carl9170_bw bw;
	struct ieee80211_channel *old_channel = NULL;

	bw = FUNC17(_bw);

	if (FUNC12(&ar->hw->conf))
		new_ht |= CARL9170FW_PHY_HT_ENABLE;

	if (FUNC13(&ar->hw->conf))
		new_ht |= CARL9170FW_PHY_HT_DYN2040;

	/* may be NULL at first setup */
	if (ar->channel) {
		old_channel = ar->channel;
		ar->channel = NULL;
	}

	/* cold reset BB/ADDA */
	err = FUNC11(ar, AR9170_PWR_REG_RESET,
				 AR9170_PWR_RESET_BB_COLD_RESET);
	if (err)
		return err;

	err = FUNC11(ar, AR9170_PWR_REG_RESET, 0x0);
	if (err)
		return err;

	err = FUNC4(ar, channel->band);
	if (err)
		return err;

	err = FUNC6(ar,
					 channel->band == NL80211_BAND_5GHZ);
	if (err)
		return err;

	err = FUNC2(ar, CARL9170_CMD_FREQ_START, 0, NULL, 0, NULL);
	if (err)
		return err;

	err = FUNC11(ar, AR9170_PHY_REG_HEAVY_CLIP_ENABLE,
				 0x200);
	if (err)
		return err;

	err = FUNC5(ar,
					 channel->band == NL80211_BAND_5GHZ,
					 channel->center_freq, bw);
	if (err)
		return err;

	tmp = AR9170_PHY_TURBO_FC_SINGLE_HT_LTF1 |
	      AR9170_PHY_TURBO_FC_HT_EN;

	switch (bw) {
	case CARL9170_BW_20:
		break;
	case CARL9170_BW_40_BELOW:
		tmp |= AR9170_PHY_TURBO_FC_DYN2040_EN |
		       AR9170_PHY_TURBO_FC_SHORT_GI_40;
		offs = 3;
		break;
	case CARL9170_BW_40_ABOVE:
		tmp |= AR9170_PHY_TURBO_FC_DYN2040_EN |
		       AR9170_PHY_TURBO_FC_SHORT_GI_40 |
		       AR9170_PHY_TURBO_FC_DYN2040_PRI_CH;
		offs = 1;
		break;
	default:
		FUNC0();
		return -ENOSYS;
	}

	if (ar->eeprom.tx_mask != 1)
		tmp |= AR9170_PHY_TURBO_FC_WALSH;

	err = FUNC11(ar, AR9170_PHY_REG_TURBO, tmp);
	if (err)
		return err;

	err = FUNC8(ar, channel);
	if (err)
		return err;

	FUNC10(ar, channel->center_freq, bw);

	err = FUNC9(ar, channel);
	if (err)
		return err;

	freqpar = FUNC3(channel, bw);

	rf.ht_settings = new_ht;
	if (FUNC13(&ar->hw->conf))
		FUNC1(CARL9170FW_PHY_HT_EXT_CHAN_OFF, rf.ht_settings, offs);

	rf.freq = FUNC14(channel->center_freq * 1000);
	rf.delta_slope_coeff_exp = FUNC14(freqpar->coeff_exp);
	rf.delta_slope_coeff_man = FUNC14(freqpar->coeff_man);
	rf.delta_slope_coeff_exp_shgi = FUNC14(freqpar->coeff_exp_shgi);
	rf.delta_slope_coeff_man_shgi = FUNC14(freqpar->coeff_man_shgi);
	rf.finiteLoopCount = FUNC14(2000);
	err = FUNC2(ar, CARL9170_CMD_RF_INIT, sizeof(rf), &rf,
				sizeof(rf_res), &rf_res);
	if (err)
		return err;

	err = FUNC15(rf_res.ret);
	if (err != 0) {
		ar->chan_fail++;
		ar->total_chan_fail++;

		FUNC18(ar->hw->wiphy, "channel change: %d -> %d "
			  "failed (%d).\n", old_channel ?
			  old_channel->center_freq : -1, channel->center_freq,
			  err);

		if (ar->chan_fail > 3) {
			/* We have tried very hard to change to _another_
			 * channel and we've failed to do so!
			 * Chances are that the PHY/RF is no longer
			 * operable (due to corruptions/fatal events/bugs?)
			 * and we need to reset at a higher level.
			 */
			FUNC7(ar, CARL9170_RR_TOO_MANY_PHY_ERRORS);
			return 0;
		}

		err = FUNC19(ar, channel, _bw);
		if (err)
			return err;
	} else {
		ar->chan_fail = 0;
	}

	if (ar->heavy_clip) {
		err = FUNC11(ar, AR9170_PHY_REG_HEAVY_CLIP_ENABLE,
					 0x200 | ar->heavy_clip);
		if (err) {
			if (FUNC16()) {
				FUNC18(ar->hw->wiphy, "failed to set "
				       "heavy clip\n");
			}

			return err;
		}
	}

	ar->channel = channel;
	ar->ht_settings = new_ht;
	return 0;
}