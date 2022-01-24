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
struct survey_info {int /*<<< orphan*/  filled; int /*<<< orphan*/ * channel; } ;
struct ieee80211_supported_band {int n_channels; int /*<<< orphan*/ * channels; } ;
struct ieee80211_hw {TYPE_1__* wiphy; struct ath10k* priv; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/ * rx_channel; int /*<<< orphan*/  data_lock; struct survey_info* survey; } ;
struct TYPE_2__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int ENOENT ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  SURVEY_INFO_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct survey_info*,struct survey_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw, int idx,
			     struct survey_info *survey)
{
	struct ath10k *ar = hw->priv;
	struct ieee80211_supported_band *sband;
	struct survey_info *ar_survey = &ar->survey[idx];
	int ret = 0;

	FUNC2(&ar->conf_mutex);

	sband = hw->wiphy->bands[NL80211_BAND_2GHZ];
	if (sband && idx >= sband->n_channels) {
		idx -= sband->n_channels;
		sband = NULL;
	}

	if (!sband)
		sband = hw->wiphy->bands[NL80211_BAND_5GHZ];

	if (!sband || idx >= sband->n_channels) {
		ret = -ENOENT;
		goto exit;
	}

	FUNC0(ar, &sband->channels[idx]);

	FUNC4(&ar->data_lock);
	FUNC1(survey, ar_survey, sizeof(*survey));
	FUNC5(&ar->data_lock);

	survey->channel = &sband->channels[idx];

	if (ar->rx_channel == survey->channel)
		survey->filled |= SURVEY_INFO_IN_USE;

exit:
	FUNC3(&ar->conf_mutex);
	return ret;
}