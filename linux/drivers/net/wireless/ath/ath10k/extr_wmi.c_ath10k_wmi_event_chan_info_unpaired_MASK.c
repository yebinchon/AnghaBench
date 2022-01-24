#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct survey_info {int time; int time_busy; int filled; int /*<<< orphan*/  noise; } ;
struct chan_info_params {int cmd_flags; int mac_clk_mhz; int cycle_count; int rx_clear_count; int /*<<< orphan*/  noise_floor; int /*<<< orphan*/  freq; } ;
struct ath10k {struct survey_info* survey; } ;

/* Variables and functions */
 int FUNC0 (struct survey_info*) ; 
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int SURVEY_INFO_NOISE_DBM ; 
 int SURVEY_INFO_TIME ; 
 int SURVEY_INFO_TIME_BUSY ; 
 int WMI_CHAN_INFO_FLAG_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct survey_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct ath10k *ar,
						struct chan_info_params *params)
{
	struct survey_info *survey;
	int idx;

	if (params->cmd_flags & WMI_CHAN_INFO_FLAG_COMPLETE) {
		FUNC1(ar, ATH10K_DBG_WMI, "chan info report completed\n");
		return;
	}

	idx = FUNC3(ar, params->freq);
	if (idx >= FUNC0(ar->survey)) {
		FUNC2(ar, "chan info: invalid frequency %d (idx %d out of bounds)\n",
			    params->freq, idx);
		return;
	}

	survey = &ar->survey[idx];

	if (!params->mac_clk_mhz)
		return;

	FUNC4(survey, 0, sizeof(*survey));

	survey->noise = params->noise_floor;
	survey->time = (params->cycle_count / params->mac_clk_mhz) / 1000;
	survey->time_busy = (params->rx_clear_count / params->mac_clk_mhz) / 1000;
	survey->filled |= SURVEY_INFO_NOISE_DBM | SURVEY_INFO_TIME |
			  SURVEY_INFO_TIME_BUSY;
}