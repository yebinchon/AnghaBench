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
struct ath10k {int /*<<< orphan*/  monitor_vdev_id; int /*<<< orphan*/  vdev_delete_done; int /*<<< orphan*/  vdev_setup_done; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar)
{
	int ret = 0;

	FUNC5(&ar->conf_mutex);

	ret = FUNC3(ar, ar->monitor_vdev_id);
	if (ret)
		FUNC2(ar, "failed to put down monitor vdev %i: %d\n",
			    ar->monitor_vdev_id, ret);

	FUNC6(&ar->vdev_setup_done);
	FUNC6(&ar->vdev_delete_done);

	ret = FUNC4(ar, ar->monitor_vdev_id);
	if (ret)
		FUNC2(ar, "failed to to request monitor vdev %i stop: %d\n",
			    ar->monitor_vdev_id, ret);

	ret = FUNC1(ar);
	if (ret)
		FUNC2(ar, "failed to synchronize monitor vdev %i stop: %d\n",
			    ar->monitor_vdev_id, ret);

	FUNC0(ar, ATH10K_DBG_MAC, "mac monitor vdev %i stopped\n",
		   ar->monitor_vdev_id);
	return ret;
}