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
struct TYPE_2__ {int /*<<< orphan*/  wakeup_completed; } ;
struct ath10k {TYPE_1__ wow; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,...) ; 
 int FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar)
{
	int ret;

	FUNC2(&ar->conf_mutex);

	FUNC3(&ar->wow.wakeup_completed);

	ret = FUNC1(ar);
	if (ret) {
		FUNC0(ar, "failed to send wow wakeup indication: %d\n",
			    ret);
		return ret;
	}

	ret = FUNC4(&ar->wow.wakeup_completed, 3 * HZ);
	if (ret == 0) {
		FUNC0(ar, "timed out while waiting for wow wakeup completion\n");
		return -ETIMEDOUT;
	}

	return 0;
}