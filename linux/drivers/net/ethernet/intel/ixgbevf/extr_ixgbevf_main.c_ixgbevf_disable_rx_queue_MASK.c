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
struct ixgbevf_ring {int /*<<< orphan*/  reg_idx; } ;
struct ixgbe_hw {int /*<<< orphan*/  hw_addr; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int IXGBEVF_MAX_RX_DESC_POLL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ixgbevf_adapter *adapter,
				     struct ixgbevf_ring *ring)
{
	struct ixgbe_hw *hw = &adapter->hw;
	int wait_loop = IXGBEVF_MAX_RX_DESC_POLL;
	u32 rxdctl;
	u8 reg_idx = ring->reg_idx;

	if (FUNC1(hw->hw_addr))
		return;
	rxdctl = FUNC0(hw, FUNC2(reg_idx));
	rxdctl &= ~IXGBE_RXDCTL_ENABLE;

	/* write value back with RXDCTL.ENABLE bit cleared */
	FUNC3(hw, FUNC2(reg_idx), rxdctl);

	/* the hardware may take up to 100us to really disable the Rx queue */
	do {
		FUNC5(10);
		rxdctl = FUNC0(hw, FUNC2(reg_idx));
	} while (--wait_loop && (rxdctl & IXGBE_RXDCTL_ENABLE));

	if (!wait_loop)
		FUNC4("RXDCTL.ENABLE queue %d not cleared while polling\n",
		       reg_idx);
}