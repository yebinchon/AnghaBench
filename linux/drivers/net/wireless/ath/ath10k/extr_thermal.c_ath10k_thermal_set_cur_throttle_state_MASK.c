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
struct thermal_cooling_device {struct ath10k* devdata; } ;
struct TYPE_2__ {unsigned long throttle_state; } ;
struct ath10k {int /*<<< orphan*/  conf_mutex; TYPE_1__ thermal; } ;

/* Variables and functions */
 unsigned long ATH10K_THERMAL_THROTTLE_MAX ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct thermal_cooling_device *cdev,
				      unsigned long throttle_state)
{
	struct ath10k *ar = cdev->devdata;

	if (throttle_state > ATH10K_THERMAL_THROTTLE_MAX) {
		FUNC1(ar, "throttle state %ld is exceeding the limit %d\n",
			    throttle_state, ATH10K_THERMAL_THROTTLE_MAX);
		return -EINVAL;
	}
	FUNC2(&ar->conf_mutex);
	ar->thermal.throttle_state = throttle_state;
	FUNC0(ar);
	FUNC3(&ar->conf_mutex);
	return 0;
}