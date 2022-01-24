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
struct ixgbe_hw {TYPE_1__ mac; int /*<<< orphan*/  hw_addr; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_LINKS ; 
 int IXGBE_LINKS_UP ; 
 int IXGBE_MAX_RX_DESC_POLL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct ixgbe_adapter *adapter,
				       struct ixgbe_ring *ring)
{
	struct ixgbe_hw *hw = &adapter->hw;
	int wait_loop = IXGBE_MAX_RX_DESC_POLL;
	u32 rxdctl;
	u8 reg_idx = ring->reg_idx;

	if (FUNC3(hw->hw_addr))
		return;
	/* RXDCTL.EN will return 0 on 82598 if link is down, so skip it */
	if (hw->mac.type == ixgbe_mac_82598EB &&
	    !(FUNC0(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
		return;

	do {
		FUNC4(1000, 2000);
		rxdctl = FUNC0(hw, FUNC1(reg_idx));
	} while (--wait_loop && !(rxdctl & IXGBE_RXDCTL_ENABLE));

	if (!wait_loop) {
		FUNC2(drv, "RXDCTL.ENABLE on Rx queue %d not set within "
		      "the polling period\n", reg_idx);
	}
}