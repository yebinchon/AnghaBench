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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct thermal_cooling_device *cdev,
				      unsigned long *state)
{
	struct ath10k *ar = cdev->devdata;

	FUNC0(&ar->conf_mutex);
	*state = ar->thermal.throttle_state;
	FUNC1(&ar->conf_mutex);

	return 0;
}