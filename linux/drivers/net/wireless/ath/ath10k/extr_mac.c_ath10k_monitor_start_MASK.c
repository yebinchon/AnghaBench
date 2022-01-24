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
struct ath10k {int monitor_started; int /*<<< orphan*/  monitor_vdev_id; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar)
{
	int ret;

	FUNC5(&ar->conf_mutex);

	ret = FUNC1(ar);
	if (ret) {
		FUNC4(ar, "failed to create monitor vdev: %d\n", ret);
		return ret;
	}

	ret = FUNC3(ar, ar->monitor_vdev_id);
	if (ret) {
		FUNC4(ar, "failed to start monitor vdev: %d\n", ret);
		FUNC2(ar);
		return ret;
	}

	ar->monitor_started = true;
	FUNC0(ar, ATH10K_DBG_MAC, "mac monitor started\n");

	return 0;
}