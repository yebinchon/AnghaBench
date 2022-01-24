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
typedef  int u64 ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int /*<<< orphan*/  state; struct sk_buff* ptp_tx_skb; struct ixgbe_hw hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_TXSTMPH ; 
 int /*<<< orphan*/  IXGBE_TXSTMPL ; 
 int /*<<< orphan*/  __IXGBE_PTP_TX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*,struct skb_shared_hwtstamps*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 

__attribute__((used)) static void FUNC5(struct ixgbe_adapter *adapter)
{
	struct sk_buff *skb = adapter->ptp_tx_skb;
	struct ixgbe_hw *hw = &adapter->hw;
	struct skb_shared_hwtstamps shhwtstamps;
	u64 regval = 0;

	regval |= (u64)FUNC0(hw, IXGBE_TXSTMPL);
	regval |= (u64)FUNC0(hw, IXGBE_TXSTMPH) << 32;
	FUNC3(adapter, &shhwtstamps, regval);

	/* Handle cleanup of the ptp_tx_skb ourselves, and unlock the state
	 * bit prior to notifying the stack via skb_tstamp_tx(). This prevents
	 * well behaved applications from attempting to timestamp again prior
	 * to the lock bit being clear.
	 */
	adapter->ptp_tx_skb = NULL;
	FUNC1(__IXGBE_PTP_TX_IN_PROGRESS, &adapter->state);

	/* Notify the stack and then free the skb after we've unlocked */
	FUNC4(skb, &shhwtstamps);
	FUNC2(skb);
}