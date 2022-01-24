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
struct ixgbe_adapter {scalar_t__ last_overflow_check; int /*<<< orphan*/  tmreg_lock; int /*<<< orphan*/  hw_tc; } ;

/* Variables and functions */
 scalar_t__ IXGBE_OVERFLOW_PERIOD ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ixgbe_adapter *adapter)
{
	bool timeout = FUNC2(adapter->last_overflow_check +
					     IXGBE_OVERFLOW_PERIOD);
	unsigned long flags;

	if (timeout) {
		/* Update the timecounter */
		FUNC0(&adapter->tmreg_lock, flags);
		FUNC3(&adapter->hw_tc);
		FUNC1(&adapter->tmreg_lock, flags);

		adapter->last_overflow_check = jiffies;
	}
}