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
struct lan743x_ptp {int /*<<< orphan*/  command_lock; } ;
struct lan743x_adapter {int /*<<< orphan*/  netdev; struct lan743x_ptp ptp; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTP_CMD_CTL ; 
 int /*<<< orphan*/  PTP_CMD_CTL_PTP_ENABLE_ ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct lan743x_adapter *adapter)
{
	struct lan743x_ptp *ptp = &adapter->ptp;

	FUNC2(&ptp->command_lock);

	if (FUNC1(adapter)) {
		FUNC4(adapter, drv, adapter->netdev,
			   "PTP already enabled\n");
		goto done;
	}
	FUNC0(adapter, PTP_CMD_CTL, PTP_CMD_CTL_PTP_ENABLE_);
done:
	FUNC3(&ptp->command_lock);
}