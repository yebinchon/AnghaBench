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
struct survey_info {int filled; scalar_t__ time_scan; scalar_t__ time_tx; scalar_t__ time_rx; scalar_t__ time; } ;
struct TYPE_6__ {scalar_t__ on_time_scan; scalar_t__ tx_time; scalar_t__ rx_time; scalar_t__ on_time_rf; } ;
struct TYPE_5__ {scalar_t__ on_time_scan; scalar_t__ tx_time; scalar_t__ rx_time; scalar_t__ on_time_rf; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_3__ radio_stats; TYPE_2__ accu_radio_stats; TYPE_1__* fw; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int ENOENT ; 
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_RADIO_BEACON_STATS ; 
 int SURVEY_INFO_TIME ; 
 int SURVEY_INFO_TIME_RX ; 
 int SURVEY_INFO_TIME_SCAN ; 
 int SURVEY_INFO_TIME_TX ; 
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct iwl_mvm*) ; 
 int FUNC4 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct survey_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw, int idx,
				  struct survey_info *survey)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	int ret;

	FUNC5(survey, 0, sizeof(*survey));

	/* only support global statistics right now */
	if (idx != 0)
		return -ENOENT;

	if (!FUNC2(&mvm->fw->ucode_capa,
			 IWL_UCODE_TLV_CAPA_RADIO_BEACON_STATS))
		return -ENOENT;

	FUNC6(&mvm->mutex);

	if (FUNC3(mvm)) {
		ret = FUNC4(mvm, false);
		if (ret)
			goto out;
	}

	survey->filled = SURVEY_INFO_TIME |
			 SURVEY_INFO_TIME_RX |
			 SURVEY_INFO_TIME_TX |
			 SURVEY_INFO_TIME_SCAN;
	survey->time = mvm->accu_radio_stats.on_time_rf +
		       mvm->radio_stats.on_time_rf;
	FUNC1(survey->time, USEC_PER_MSEC);

	survey->time_rx = mvm->accu_radio_stats.rx_time +
			  mvm->radio_stats.rx_time;
	FUNC1(survey->time_rx, USEC_PER_MSEC);

	survey->time_tx = mvm->accu_radio_stats.tx_time +
			  mvm->radio_stats.tx_time;
	FUNC1(survey->time_tx, USEC_PER_MSEC);

	survey->time_scan = mvm->accu_radio_stats.on_time_scan +
			    mvm->radio_stats.on_time_scan;
	FUNC1(survey->time_scan, USEC_PER_MSEC);

	ret = 0;
 out:
	FUNC7(&mvm->mutex);
	return ret;
}