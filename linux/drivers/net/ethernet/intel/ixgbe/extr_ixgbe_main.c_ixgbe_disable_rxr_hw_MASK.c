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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ixgbe_ring {int /*<<< orphan*/  reg_idx; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_LINKS ; 
 int IXGBE_LINKS_UP ; 
 int IXGBE_MAX_RX_DESC_POLL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int IXGBE_RXDCTL_SWFLSH ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ixgbe_adapter*) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ixgbe_adapter *adapter,
				 struct ixgbe_ring *rx_ring)
{
	unsigned long wait_delay, delay_interval;
	struct ixgbe_hw *hw = &adapter->hw;
	u8 reg_idx = rx_ring->reg_idx;
	int wait_loop;
	u32 rxdctl;

	rxdctl = FUNC0(hw, FUNC1(reg_idx));
	rxdctl &= ~IXGBE_RXDCTL_ENABLE;
	rxdctl |= IXGBE_RXDCTL_SWFLSH;

	/* write value back with RXDCTL.ENABLE bit cleared */
	FUNC2(hw, FUNC1(reg_idx), rxdctl);

	/* RXDCTL.EN may not change on 82598 if link is down, so skip it */
	if (hw->mac.type == ixgbe_mac_82598EB &&
	    !(FUNC0(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
		return;

	/* delay mechanism from ixgbe_disable_rx */
	delay_interval = FUNC4(adapter) / 100;

	wait_loop = IXGBE_MAX_RX_DESC_POLL;
	wait_delay = delay_interval;

	while (wait_loop--) {
		FUNC5(wait_delay, wait_delay + 10);
		wait_delay += delay_interval * 2;
		rxdctl = FUNC0(hw, FUNC1(reg_idx));

		if (!(rxdctl & IXGBE_RXDCTL_ENABLE))
			return;
	}

	FUNC3(drv, "RXDCTL.ENABLE not cleared within the polling period\n");
}