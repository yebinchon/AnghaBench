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
struct ieee80211_hw {struct ath10k* priv; } ;
struct ath10k {int state; int /*<<< orphan*/  conf_mutex; TYPE_2__* running_fw; } ;
struct TYPE_3__ {int /*<<< orphan*/  fw_features; } ;
struct TYPE_4__ {TYPE_1__ fw_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FW_FEATURE_WOWLAN_SUPPORT ; 
#define  ATH10K_STATE_OFF 133 
#define  ATH10K_STATE_ON 132 
#define  ATH10K_STATE_RESTARTED 131 
#define  ATH10K_STATE_RESTARTING 130 
#define  ATH10K_STATE_UTF 129 
#define  ATH10K_STATE_WEDGED 128 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int FUNC3 (struct ath10k*) ; 
 int FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct ieee80211_hw *hw)
{
	struct ath10k *ar = hw->priv;
	int ret;

	FUNC5(&ar->conf_mutex);

	if (FUNC0(!FUNC7(ATH10K_FW_FEATURE_WOWLAN_SUPPORT,
			      ar->running_fw->fw_file.fw_features))) {
		ret = 1;
		goto exit;
	}

	ret = FUNC1(ar);
	if (ret) {
		FUNC2(ar, "failed to resume hif: %d\n", ret);
		goto exit;
	}

	ret = FUNC4(ar);
	if (ret)
		FUNC2(ar, "failed to wakeup from wow: %d\n", ret);

	ret = FUNC3(ar);
	if (ret)
		FUNC2(ar, "failed to cleanup nlo: %d\n", ret);

exit:
	if (ret) {
		switch (ar->state) {
		case ATH10K_STATE_ON:
			ar->state = ATH10K_STATE_RESTARTING;
			ret = 1;
			break;
		case ATH10K_STATE_OFF:
		case ATH10K_STATE_RESTARTING:
		case ATH10K_STATE_RESTARTED:
		case ATH10K_STATE_UTF:
		case ATH10K_STATE_WEDGED:
			FUNC2(ar, "encountered unexpected device state %d on resume, cannot recover\n",
				    ar->state);
			ret = -EIO;
			break;
		}
	}

	FUNC6(&ar->conf_mutex);
	return ret;
}