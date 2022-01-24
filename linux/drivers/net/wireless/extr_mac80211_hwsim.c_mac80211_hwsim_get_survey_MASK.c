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
struct survey_info {int filled; int noise; int time; int time_busy; int /*<<< orphan*/  channel; } ;
struct mac80211_hwsim_data {int /*<<< orphan*/  mutex; TYPE_1__* survey_data; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOENT ; 
 int SURVEY_INFO_NOISE_DBM ; 
 int SURVEY_INFO_TIME ; 
 int SURVEY_INFO_TIME_BUSY ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw, int idx,
				     struct survey_info *survey)
{
	struct mac80211_hwsim_data *hwsim = hw->priv;

	if (idx < 0 || idx >= FUNC0(hwsim->survey_data))
		return -ENOENT;

	FUNC2(&hwsim->mutex);
	survey->channel = hwsim->survey_data[idx].channel;
	if (!survey->channel) {
		FUNC3(&hwsim->mutex);
		return -ENOENT;
	}

	/*
	 * Magically conjured dummy values --- this is only ok for simulated hardware.
	 *
	 * A real driver which cannot determine real values noise MUST NOT
	 * report any, especially not a magically conjured ones :-)
	 */
	survey->filled = SURVEY_INFO_NOISE_DBM |
			 SURVEY_INFO_TIME |
			 SURVEY_INFO_TIME_BUSY;
	survey->noise = -92;
	survey->time =
		FUNC1(hwsim->survey_data[idx].end -
				 hwsim->survey_data[idx].start);
	/* report 12.5% of channel time is used */
	survey->time_busy = survey->time/8;
	FUNC3(&hwsim->mutex);

	return 0;
}