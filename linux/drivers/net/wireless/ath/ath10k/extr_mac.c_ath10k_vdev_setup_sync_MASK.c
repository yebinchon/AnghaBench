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
struct ath10k {int last_wmi_vdev_start_status; int /*<<< orphan*/  vdev_setup_done; int /*<<< orphan*/  dev_flags; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FLAG_CRASH_FLUSH ; 
 int /*<<< orphan*/  ATH10K_VDEV_SETUP_TIMEOUT_HZ ; 
 int ESHUTDOWN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct ath10k *ar)
{
	unsigned long time_left;

	FUNC0(&ar->conf_mutex);

	if (FUNC1(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags))
		return -ESHUTDOWN;

	time_left = FUNC2(&ar->vdev_setup_done,
						ATH10K_VDEV_SETUP_TIMEOUT_HZ);
	if (time_left == 0)
		return -ETIMEDOUT;

	return ar->last_wmi_vdev_start_status;
}