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
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; int /*<<< orphan*/  flags; } ;
struct ath6kl {size_t ctrl_ep; int /*<<< orphan*/  event_wq; scalar_t__* tx_pending; int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_HOST_MODE_ASLEEP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HOST_SLEEP_MODE_CMD_PROCESSED ; 
 int /*<<< orphan*/  WMI_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath6kl_vif*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ath6kl *ar, struct ath6kl_vif *vif)
{
	int ret, left;

	FUNC2(HOST_SLEEP_MODE_CMD_PROCESSED, &vif->flags);

	ret = FUNC1(ar->wmi, vif->fw_vif_idx,
						 ATH6KL_HOST_MODE_ASLEEP);
	if (ret)
		return ret;

	left = FUNC5(ar->event_wq,
						FUNC4(vif),
						WMI_TIMEOUT);
	if (left == 0) {
		FUNC0("timeout, didn't get host sleep cmd processed event\n");
		ret = -ETIMEDOUT;
	} else if (left < 0) {
		FUNC0("error while waiting for host sleep cmd processed event %d\n",
			    left);
		ret = left;
	}

	if (ar->tx_pending[ar->ctrl_ep]) {
		left = FUNC5(ar->event_wq,
							FUNC3(ar),
							WMI_TIMEOUT);
		if (left == 0) {
			FUNC0("clear wmi ctrl data timeout\n");
			ret = -ETIMEDOUT;
		} else if (left < 0) {
			FUNC0("clear wmi ctrl data failed: %d\n", left);
			ret = left;
		}
	}

	return ret;
}