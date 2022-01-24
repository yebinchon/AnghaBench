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
struct TYPE_2__ {int /*<<< orphan*/  barrier; } ;
struct ath10k {TYPE_1__ wmi; int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_WMI_BARRIER_ECHO_ID ; 
 int /*<<< orphan*/  ATH10K_WMI_BARRIER_TIMEOUT_HZ ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,int) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(struct ath10k *ar)
{
	int ret;
	int time_left;

	FUNC3(&ar->data_lock);
	FUNC2(&ar->wmi.barrier);
	FUNC4(&ar->data_lock);

	ret = FUNC1(ar, ATH10K_WMI_BARRIER_ECHO_ID);
	if (ret) {
		FUNC0(ar, "failed to submit wmi echo: %d\n", ret);
		return ret;
	}

	time_left = FUNC5(&ar->wmi.barrier,
						ATH10K_WMI_BARRIER_TIMEOUT_HZ);
	if (!time_left)
		return -ETIMEDOUT;

	return 0;
}