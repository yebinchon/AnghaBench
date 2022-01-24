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
struct ath10k_vif {int /*<<< orphan*/  vdev_id; struct ath10k* ar; } ;
struct ath10k {scalar_t__ num_started_vdevs; int /*<<< orphan*/  vdev_delete_done; int /*<<< orphan*/  vdev_setup_done; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ath10k_vif *arvif)
{
	struct ath10k *ar = arvif->ar;
	int ret;

	FUNC5(&ar->conf_mutex);

	FUNC6(&ar->vdev_setup_done);
	FUNC6(&ar->vdev_delete_done);

	ret = FUNC4(ar, arvif->vdev_id);
	if (ret) {
		FUNC3(ar, "failed to stop WMI vdev %i: %d\n",
			    arvif->vdev_id, ret);
		return ret;
	}

	ret = FUNC2(ar);
	if (ret) {
		FUNC3(ar, "failed to synchronize setup for vdev %i: %d\n",
			    arvif->vdev_id, ret);
		return ret;
	}

	FUNC0(ar->num_started_vdevs == 0);

	if (ar->num_started_vdevs != 0) {
		ar->num_started_vdevs--;
		FUNC1(ar);
	}

	return ret;
}