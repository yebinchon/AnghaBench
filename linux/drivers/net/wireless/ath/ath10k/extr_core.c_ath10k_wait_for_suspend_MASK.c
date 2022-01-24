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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k {int /*<<< orphan*/  target_suspend; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,...) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(struct ath10k *ar, u32 suspend_opt)
{
	int ret;
	unsigned long time_left;

	FUNC2(&ar->target_suspend);

	ret = FUNC1(ar, suspend_opt);
	if (ret) {
		FUNC0(ar, "could not suspend target (%d)\n", ret);
		return ret;
	}

	time_left = FUNC3(&ar->target_suspend, 1 * HZ);

	if (!time_left) {
		FUNC0(ar, "suspend timed out - target pause event never came\n");
		return -ETIMEDOUT;
	}

	return 0;
}