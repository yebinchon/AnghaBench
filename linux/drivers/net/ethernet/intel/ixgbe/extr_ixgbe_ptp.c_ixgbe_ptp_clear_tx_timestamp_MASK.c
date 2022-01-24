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
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/ * ptp_tx_skb; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_TXSTMPH ; 
 int /*<<< orphan*/  __IXGBE_PTP_TX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;

	FUNC0(hw, IXGBE_TXSTMPH);
	if (adapter->ptp_tx_skb) {
		FUNC2(adapter->ptp_tx_skb);
		adapter->ptp_tx_skb = NULL;
	}
	FUNC1(__IXGBE_PTP_TX_IN_PROGRESS, &adapter->state);
}