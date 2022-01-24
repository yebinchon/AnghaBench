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
struct survey_info {struct ieee80211_channel* channel; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_hw {TYPE_1__* wiphy; struct ath_softc* priv; } ;
struct ieee80211_channel {int hw_value; } ;
struct ath_softc {int /*<<< orphan*/ * survey; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int /*<<< orphan*/  cc_lock; } ;
struct TYPE_2__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ATH9K_TX99 ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct survey_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw, int idx,
			     struct survey_info *survey)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC1(sc->sc_ah);
	struct ieee80211_supported_band *sband;
	struct ieee80211_channel *chan;
	unsigned long flags;
	int pos;

	if (FUNC0(CONFIG_ATH9K_TX99))
		return -EOPNOTSUPP;

	FUNC4(&common->cc_lock, flags);
	if (idx == 0)
		FUNC2(sc);

	sband = hw->wiphy->bands[NL80211_BAND_2GHZ];
	if (sband && idx >= sband->n_channels) {
		idx -= sband->n_channels;
		sband = NULL;
	}

	if (!sband)
		sband = hw->wiphy->bands[NL80211_BAND_5GHZ];

	if (!sband || idx >= sband->n_channels) {
		FUNC5(&common->cc_lock, flags);
		return -ENOENT;
	}

	chan = &sband->channels[idx];
	pos = chan->hw_value;
	FUNC3(survey, &sc->survey[pos], sizeof(*survey));
	survey->channel = chan;
	FUNC5(&common->cc_lock, flags);

	return 0;
}