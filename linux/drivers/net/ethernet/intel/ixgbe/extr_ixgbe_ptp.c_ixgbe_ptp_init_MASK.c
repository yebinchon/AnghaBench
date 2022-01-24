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
struct ixgbe_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  ptp_tx_work; int /*<<< orphan*/  tmreg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBE_PTP_RUNNING ; 
 scalar_t__ FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  ixgbe_ptp_tx_hwtstamp_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ixgbe_adapter *adapter)
{
	/* initialize the spin lock first since we can't control when a user
	 * will call the entry functions once we have initialized the clock
	 * device
	 */
	FUNC4(&adapter->tmreg_lock);

	/* obtain a PTP device, or re-use an existing device */
	if (FUNC1(adapter))
		return;

	/* we have a clock so we can initialize work now */
	FUNC0(&adapter->ptp_tx_work, ixgbe_ptp_tx_hwtstamp_work);

	/* reset the PTP related hardware bits */
	FUNC2(adapter);

	/* enter the IXGBE_PTP_RUNNING state */
	FUNC3(__IXGBE_PTP_RUNNING, &adapter->state);

	return;
}