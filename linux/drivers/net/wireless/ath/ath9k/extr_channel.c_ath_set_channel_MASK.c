#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct survey_info {int dummy; } ;
struct TYPE_6__ {scalar_t__ radar_enabled; } ;
struct ieee80211_hw {TYPE_2__ conf; } ;
struct ieee80211_channel {int hw_value; int /*<<< orphan*/  center_freq; } ;
struct cfg80211_chan_def {int /*<<< orphan*/  width; struct ieee80211_channel* chan; } ;
struct TYPE_8__ {scalar_t__ spectral_mode; } ;
struct ath_softc {TYPE_4__ spec_priv; struct ath_hw* sc_ah; TYPE_3__* survey; TYPE_3__* cur_survey; TYPE_1__* cur_chan; struct ieee80211_hw* hw; } ;
struct ath_hw {struct ath9k_channel* channels; struct ath9k_channel* curchan; } ;
struct ath_common {int /*<<< orphan*/  op_flags; int /*<<< orphan*/  cc_lock; } ;
struct ath9k_channel {int dummy; } ;
struct TYPE_7__ {int filled; } ;
struct TYPE_5__ {int /*<<< orphan*/  offchannel; struct cfg80211_chan_def chandef; } ;

/* Variables and functions */
 int ATH9K_RX_FILTER_PHYERR ; 
 int ATH9K_RX_FILTER_PHYRADAR ; 
 int /*<<< orphan*/  ATH_OP_INVALID ; 
 int /*<<< orphan*/  ATH_OP_SCANNING ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  DFS ; 
 int EIO ; 
 scalar_t__ SPECTRAL_CHANSCAN ; 
 int SURVEY_INFO_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct ath_hw*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,TYPE_4__*) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (struct ath_softc*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	struct ieee80211_hw *hw = sc->hw;
	struct ath9k_channel *hchan;
	struct cfg80211_chan_def *chandef = &sc->cur_chan->chandef;
	struct ieee80211_channel *chan = chandef->chan;
	int pos = chan->hw_value;
	unsigned long flags;
	int old_pos = -1;
	int r;

	if (FUNC12(ATH_OP_INVALID, &common->op_flags))
		return -EIO;

	if (ah->curchan)
		old_pos = ah->curchan - &ah->channels[0];

	FUNC5(common, CONFIG, "Set channel: %d MHz width: %d\n",
		chan->center_freq, chandef->width);

	/* update survey stats for the old channel before switching */
	FUNC10(&common->cc_lock, flags);
	FUNC8(sc);
	FUNC11(&common->cc_lock, flags);

	FUNC0(hw, ah, chandef);

	/* If the operating channel changes, change the survey in-use flags
	 * along with it.
	 * Reset the survey data for the new channel, unless we're switching
	 * back to the operating channel from an off-channel operation.
	 */
	if (!sc->cur_chan->offchannel && sc->cur_survey != &sc->survey[pos]) {
		if (sc->cur_survey)
			sc->cur_survey->filled &= ~SURVEY_INFO_IN_USE;

		sc->cur_survey = &sc->survey[pos];

		FUNC9(sc->cur_survey, 0, sizeof(struct survey_info));
		sc->cur_survey->filled |= SURVEY_INFO_IN_USE;
	} else if (!(sc->survey[pos].filled & SURVEY_INFO_IN_USE)) {
		FUNC9(&sc->survey[pos], 0, sizeof(struct survey_info));
	}

	hchan = &sc->sc_ah->channels[pos];
	r = FUNC6(sc, hchan);
	if (r)
		return r;

	/* The most recent snapshot of channel->noisefloor for the old
	 * channel is only available after the hardware reset. Copy it to
	 * the survey stats now.
	 */
	if (old_pos >= 0)
		FUNC7(sc, old_pos);

	/* Enable radar pulse detection if on a DFS channel. Spectral
	 * scanning and radar detection can not be used concurrently.
	 */
	if (hw->conf.radar_enabled) {
		u32 rxfilter;

		rxfilter = FUNC3(ah);
		rxfilter |= ATH9K_RX_FILTER_PHYRADAR |
				ATH9K_RX_FILTER_PHYERR;
		FUNC4(ah, rxfilter);
		FUNC5(common, DFS, "DFS enabled at freq %d\n",
			chan->center_freq);
	} else {
		/* perform spectral scan if requested. */
		if (FUNC12(ATH_OP_SCANNING, &common->op_flags) &&
			sc->spec_priv.spectral_mode == SPECTRAL_CHANSCAN)
			FUNC1(common, &sc->spec_priv);
	}

	return 0;
}