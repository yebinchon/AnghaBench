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
struct cfg80211_wowlan {int dummy; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; TYPE_2__* running_fw; } ;
struct TYPE_3__ {int /*<<< orphan*/  fw_features; } ;
struct TYPE_4__ {TYPE_1__ fw_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FW_FEATURE_WOWLAN_SUPPORT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 int FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*) ; 
 int FUNC6 (struct ath10k*,struct cfg80211_wowlan*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct ieee80211_hw *hw,
			  struct cfg80211_wowlan *wowlan)
{
	struct ath10k *ar = hw->priv;
	int ret;

	FUNC8(&ar->conf_mutex);

	if (FUNC0(!FUNC10(ATH10K_FW_FEATURE_WOWLAN_SUPPORT,
			      ar->running_fw->fw_file.fw_features))) {
		ret = 1;
		goto exit;
	}

	ret =  FUNC4(ar);
	if (ret) {
		FUNC3(ar, "failed to clear wow wakeup events: %d\n",
			    ret);
		goto exit;
	}

	ret = FUNC6(ar, wowlan);
	if (ret) {
		FUNC3(ar, "failed to set wow wakeup events: %d\n",
			    ret);
		goto cleanup;
	}

	FUNC2(ar);

	ret = FUNC5(ar);
	if (ret) {
		FUNC3(ar, "failed to start wow: %d\n", ret);
		goto cleanup;
	}

	ret = FUNC1(ar);
	if (ret) {
		FUNC3(ar, "failed to suspend hif: %d\n", ret);
		goto wakeup;
	}

	goto exit;

wakeup:
	FUNC7(ar);

cleanup:
	FUNC4(ar);

exit:
	FUNC9(&ar->conf_mutex);
	return ret ? 1 : 0;
}