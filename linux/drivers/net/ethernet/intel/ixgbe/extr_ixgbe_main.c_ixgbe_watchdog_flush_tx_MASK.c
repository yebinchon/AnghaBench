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
struct ixgbe_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBE_RESET_REQUESTED ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct ixgbe_adapter*) ; 
 scalar_t__ FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ixgbe_adapter *adapter)
{
	if (!FUNC3(adapter->netdev)) {
		if (FUNC1(adapter) ||
		    FUNC2(adapter)) {
			/* We've lost link, so the controller stops DMA,
			 * but we've got queued Tx work that's never going
			 * to get done, so reset controller to flush Tx.
			 * (Do the reset outside of interrupt context).
			 */
			FUNC0(drv, "initiating reset to clear Tx work after link loss\n");
			FUNC4(__IXGBE_RESET_REQUESTED, &adapter->state);
		}
	}
}