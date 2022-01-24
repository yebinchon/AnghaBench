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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ixgbe_ring {int /*<<< orphan*/  reg_idx; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int IXGBE_MAX_RX_DESC_POLL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IXGBE_TXDCTL_ENABLE ; 
 int /*<<< orphan*/  IXGBE_TXDCTL_SWFLSH ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ixgbe_adapter *adapter,
				 struct ixgbe_ring *tx_ring)
{
	unsigned long wait_delay, delay_interval;
	struct ixgbe_hw *hw = &adapter->hw;
	u8 reg_idx = tx_ring->reg_idx;
	int wait_loop;
	u32 txdctl;

	FUNC2(hw, FUNC1(reg_idx), IXGBE_TXDCTL_SWFLSH);

	/* delay mechanism from ixgbe_disable_tx */
	delay_interval = FUNC4(adapter) / 100;

	wait_loop = IXGBE_MAX_RX_DESC_POLL;
	wait_delay = delay_interval;

	while (wait_loop--) {
		FUNC5(wait_delay, wait_delay + 10);
		wait_delay += delay_interval * 2;
		txdctl = FUNC0(hw, FUNC1(reg_idx));

		if (!(txdctl & IXGBE_TXDCTL_ENABLE))
			return;
	}

	FUNC3(drv, "TXDCTL.ENABLE not cleared within the polling period\n");
}