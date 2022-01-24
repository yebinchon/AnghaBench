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
struct wmi_start_scan_arg {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  started; } ;
struct ath10k {int /*<<< orphan*/  data_lock; TYPE_1__ scan; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 scalar_t__ ATH10K_SCAN_IDLE ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int FUNC2 (struct ath10k*,struct wmi_start_scan_arg const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar,
			     const struct wmi_start_scan_arg *arg)
{
	int ret;

	FUNC3(&ar->conf_mutex);

	ret = FUNC2(ar, arg);
	if (ret)
		return ret;

	ret = FUNC6(&ar->scan.started, 1 * HZ);
	if (ret == 0) {
		ret = FUNC0(ar);
		if (ret)
			FUNC1(ar, "failed to stop scan: %d\n", ret);

		return -ETIMEDOUT;
	}

	/* If we failed to start the scan, return error code at
	 * this point.  This is probably due to some issue in the
	 * firmware, but no need to wedge the driver due to that...
	 */
	FUNC4(&ar->data_lock);
	if (ar->scan.state == ATH10K_SCAN_IDLE) {
		FUNC5(&ar->data_lock);
		return -EINVAL;
	}
	FUNC5(&ar->data_lock);

	return 0;
}