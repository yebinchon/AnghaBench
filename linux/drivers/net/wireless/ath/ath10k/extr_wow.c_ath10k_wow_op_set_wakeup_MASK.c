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
struct ath10k {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  dev; TYPE_2__* running_fw; } ;
struct TYPE_3__ {int /*<<< orphan*/  fw_features; } ;
struct TYPE_4__ {TYPE_1__ fw_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FW_FEATURE_WOWLAN_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct ieee80211_hw *hw, bool enabled)
{
	struct ath10k *ar = hw->priv;

	FUNC1(&ar->conf_mutex);
	if (FUNC3(ATH10K_FW_FEATURE_WOWLAN_SUPPORT,
		     ar->running_fw->fw_file.fw_features)) {
		FUNC0(ar->dev, enabled);
	}
	FUNC2(&ar->conf_mutex);
}