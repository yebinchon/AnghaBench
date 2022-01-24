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
struct ath10k {long long free_vdev_map; int monitor_vdev_id; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  WMI_VDEV_TYPE_MONITOR ; 
 int FUNC0 (long long) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,long long) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,...) ; 
 int FUNC3 (struct ath10k*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	int bit, ret = 0;

	FUNC4(&ar->conf_mutex);

	if (ar->free_vdev_map == 0) {
		FUNC2(ar, "failed to find free vdev id for monitor vdev\n");
		return -ENOMEM;
	}

	bit = FUNC0(ar->free_vdev_map);

	ar->monitor_vdev_id = bit;

	ret = FUNC3(ar, ar->monitor_vdev_id,
				     WMI_VDEV_TYPE_MONITOR,
				     0, ar->mac_addr);
	if (ret) {
		FUNC2(ar, "failed to request monitor vdev %i creation: %d\n",
			    ar->monitor_vdev_id, ret);
		return ret;
	}

	ar->free_vdev_map &= ~(1LL << ar->monitor_vdev_id);
	FUNC1(ar, ATH10K_DBG_MAC, "mac monitor vdev %d created\n",
		   ar->monitor_vdev_id);

	return 0;
}