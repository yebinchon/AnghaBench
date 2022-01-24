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
struct ixgbe_adapter {int /*<<< orphan*/  test_rx_ring; int /*<<< orphan*/  test_tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 

__attribute__((used)) static void FUNC5(struct ixgbe_adapter *adapter)
{
	/* Shut down the DMA engines now so they can be reinitialized later,
	 * since the test rings and normally used rings should overlap on
	 * queue 0 we can just use the standard disable Rx/Tx calls and they
	 * will take care of disabling the test rings for us.
	 */

	/* first Rx */
	FUNC0(adapter);

	/* now Tx */
	FUNC1(adapter);

	FUNC4(adapter);

	FUNC3(&adapter->test_tx_ring);
	FUNC2(&adapter->test_rx_ring);
}