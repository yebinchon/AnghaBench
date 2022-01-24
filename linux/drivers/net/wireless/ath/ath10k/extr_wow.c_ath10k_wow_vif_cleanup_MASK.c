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
struct ath10k_vif {int /*<<< orphan*/  vdev_id; struct ath10k* ar; } ;
struct TYPE_2__ {int max_num_patterns; } ;
struct ath10k {TYPE_1__ wow; } ;

/* Variables and functions */
 int WOW_EVENT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ath10k_vif *arvif)
{
	struct ath10k *ar = arvif->ar;
	int i, ret;

	for (i = 0; i < WOW_EVENT_MAX; i++) {
		ret = FUNC1(ar, arvif->vdev_id, i, 0);
		if (ret) {
			FUNC0(ar, "failed to issue wow wakeup for event %s on vdev %i: %d\n",
				    FUNC3(i), arvif->vdev_id, ret);
			return ret;
		}
	}

	for (i = 0; i < ar->wow.max_num_patterns; i++) {
		ret = FUNC2(ar, arvif->vdev_id, i);
		if (ret) {
			FUNC0(ar, "failed to delete wow pattern %d for vdev %i: %d\n",
				    i, arvif->vdev_id, ret);
			return ret;
		}
	}

	return 0;
}