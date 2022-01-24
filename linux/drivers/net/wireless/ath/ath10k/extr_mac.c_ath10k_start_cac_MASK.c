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
struct ath10k {int /*<<< orphan*/  monitor_vdev_id; int /*<<< orphan*/  dev_flags; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_CAC_RUNNING ; 
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar)
{
	int ret;

	FUNC4(&ar->conf_mutex);

	FUNC5(ATH10K_CAC_RUNNING, &ar->dev_flags);

	ret = FUNC1(ar);
	if (ret) {
		FUNC2(ar, "failed to start monitor (cac): %d\n", ret);
		FUNC3(ATH10K_CAC_RUNNING, &ar->dev_flags);
		return ret;
	}

	FUNC0(ar, ATH10K_DBG_MAC, "mac cac start monitor vdev %d\n",
		   ar->monitor_vdev_id);

	return 0;
}