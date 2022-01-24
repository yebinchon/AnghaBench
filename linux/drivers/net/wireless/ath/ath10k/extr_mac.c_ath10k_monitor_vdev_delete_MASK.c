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
struct ath10k {long long monitor_vdev_id; long long free_vdev_map; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,long long) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,long long,int) ; 
 int FUNC2 (struct ath10k*,long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar)
{
	int ret = 0;

	FUNC3(&ar->conf_mutex);

	ret = FUNC2(ar, ar->monitor_vdev_id);
	if (ret) {
		FUNC1(ar, "failed to request wmi monitor vdev %i removal: %d\n",
			    ar->monitor_vdev_id, ret);
		return ret;
	}

	ar->free_vdev_map |= 1LL << ar->monitor_vdev_id;

	FUNC0(ar, ATH10K_DBG_MAC, "mac monitor vdev %d deleted\n",
		   ar->monitor_vdev_id);
	return ret;
}