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
typedef  int /*<<< orphan*/  u32 ;
struct wmi_vdev_start_ev_arg {int /*<<< orphan*/  status; } ;
struct sk_buff {int dummy; } ;
struct ath10k {int last_wmi_vdev_start_status; int /*<<< orphan*/  vdev_setup_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMI_VDEV_START_CHAN_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int,...) ; 
 int FUNC4 (struct ath10k*,struct sk_buff*,struct wmi_vdev_start_ev_arg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_vdev_start_ev_arg arg = {};
	int ret;
	u32 status;

	FUNC2(ar, ATH10K_DBG_WMI, "WMI_VDEV_START_RESP_EVENTID\n");

	ar->last_wmi_vdev_start_status = 0;

	ret = FUNC4(ar, skb, &arg);
	if (ret) {
		FUNC3(ar, "failed to parse vdev start event: %d\n", ret);
		ar->last_wmi_vdev_start_status = ret;
		goto out;
	}

	status = FUNC1(arg.status);
	if (FUNC0(status)) {
		FUNC3(ar, "vdev-start-response reports status error: %d (%s)\n",
			    status, (status == WMI_VDEV_START_CHAN_INVALID) ?
			    "chan-invalid" : "unknown");
		/* Setup is done one way or another though, so we should still
		 * do the completion, so don't return here.
		 */
		ar->last_wmi_vdev_start_status = -EINVAL;
	}

out:
	FUNC5(&ar->vdev_setup_done);
}