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
struct ath10k {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int PCIE_WAKE_LATE_US ; 
 int PCIE_WAKE_TIMEOUT ; 
 scalar_t__ FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar)
{
	int tot_delay = 0;
	int curr_delay = 5;

	while (tot_delay < PCIE_WAKE_TIMEOUT) {
		if (FUNC0(ar)) {
			if (tot_delay > PCIE_WAKE_LATE_US)
				FUNC1(ar, "device wakeup took %d ms which is unusually long, otherwise it works normally.\n",
					    tot_delay / 1000);
			return 0;
		}

		FUNC2(curr_delay);
		tot_delay += curr_delay;

		if (curr_delay < 50)
			curr_delay += 5;
	}

	return -ETIMEDOUT;
}