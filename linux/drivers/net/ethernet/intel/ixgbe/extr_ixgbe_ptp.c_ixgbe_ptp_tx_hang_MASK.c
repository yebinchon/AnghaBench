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
struct ixgbe_adapter {int /*<<< orphan*/  tx_hwtstamp_timeouts; int /*<<< orphan*/  ptp_tx_work; int /*<<< orphan*/  state; int /*<<< orphan*/  ptp_tx_skb; scalar_t__ ptp_tx_start; } ;

/* Variables and functions */
 scalar_t__ IXGBE_PTP_TX_TIMEOUT ; 
 int /*<<< orphan*/  __IXGBE_PTP_TX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__) ; 

void FUNC5(struct ixgbe_adapter *adapter)
{
	bool timeout = FUNC4(adapter->ptp_tx_start +
					      IXGBE_PTP_TX_TIMEOUT);

	if (!adapter->ptp_tx_skb)
		return;

	if (!FUNC3(__IXGBE_PTP_TX_IN_PROGRESS, &adapter->state))
		return;

	/* If we haven't received a timestamp within the timeout, it is
	 * reasonable to assume that it will never occur, so we can unlock the
	 * timestamp bit when this occurs.
	 */
	if (timeout) {
		FUNC0(&adapter->ptp_tx_work);
		FUNC2(adapter);
		adapter->tx_hwtstamp_timeouts++;
		FUNC1(drv, "clearing Tx timestamp hang\n");
	}
}