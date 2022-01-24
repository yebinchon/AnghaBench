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
struct e1000_hw {int dummy; } ;
struct igb_adapter {TYPE_1__* pdev; int /*<<< orphan*/  tx_hwtstamp_timeouts; int /*<<< orphan*/  state; int /*<<< orphan*/ * ptp_tx_skb; int /*<<< orphan*/  ptp_tx_work; scalar_t__ ptp_tx_start; struct e1000_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_TXSTMPH ; 
 scalar_t__ IGB_PTP_TX_TIMEOUT ; 
 int /*<<< orphan*/  __IGB_PTP_TX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 

void FUNC7(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	bool timeout = FUNC6(adapter->ptp_tx_start +
					      IGB_PTP_TX_TIMEOUT);

	if (!adapter->ptp_tx_skb)
		return;

	if (!FUNC5(__IGB_PTP_TX_IN_PROGRESS, &adapter->state))
		return;

	/* If we haven't received a timestamp within the timeout, it is
	 * reasonable to assume that it will never occur, so we can unlock the
	 * timestamp bit when this occurs.
	 */
	if (timeout) {
		FUNC0(&adapter->ptp_tx_work);
		FUNC2(adapter->ptp_tx_skb);
		adapter->ptp_tx_skb = NULL;
		FUNC1(__IGB_PTP_TX_IN_PROGRESS, &adapter->state);
		adapter->tx_hwtstamp_timeouts++;
		/* Clear the tx valid bit in TSYNCTXCTL register to enable
		 * interrupt
		 */
		FUNC4(E1000_TXSTMPH);
		FUNC3(&adapter->pdev->dev, "clearing Tx timestamp hang\n");
	}
}