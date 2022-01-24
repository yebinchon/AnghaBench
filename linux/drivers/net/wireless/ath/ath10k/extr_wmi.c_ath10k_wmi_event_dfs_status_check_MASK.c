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
struct wmi_dfs_status_ev_arg {scalar_t__ status; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  radar_confirm; } ;
struct ath10k {TYPE_1__ wmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_REGULATORY ; 
 scalar_t__ WMI_HW_RADAR_DETECTED ; 
 scalar_t__ WMI_RADAR_DETECTION_FAIL ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int FUNC3 (struct ath10k*,struct sk_buff*,struct wmi_dfs_status_ev_arg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_dfs_status_ev_arg status_arg = {};
	int ret;

	ret = FUNC3(ar, skb, &status_arg);

	if (ret) {
		FUNC2(ar, "failed to parse dfs status event: %d\n", ret);
		return;
	}

	FUNC0(ar, ATH10K_DBG_REGULATORY,
		   "dfs status event received from fw: %d\n",
		   status_arg.status);

	/* Even in case of radar detection failure we follow the same
	 * behaviour as if radar is detected i.e to switch to a different
	 * channel.
	 */
	if (status_arg.status == WMI_HW_RADAR_DETECTED ||
	    status_arg.status == WMI_RADAR_DETECTION_FAIL)
		FUNC1(ar);
	FUNC4(&ar->wmi.radar_confirm);
}