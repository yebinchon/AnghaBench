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
struct ath10k {int monitor_started; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	int ret;

	FUNC4(&ar->conf_mutex);

	ret = FUNC2(ar);
	if (ret) {
		FUNC3(ar, "failed to stop monitor vdev: %d\n", ret);
		return ret;
	}

	ret = FUNC1(ar);
	if (ret) {
		FUNC3(ar, "failed to delete monitor vdev: %d\n", ret);
		return ret;
	}

	ar->monitor_started = false;
	FUNC0(ar, ATH10K_DBG_MAC, "mac monitor stopped\n");

	return 0;
}