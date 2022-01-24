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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  state; struct ixgbe_hw hw; scalar_t__ sfp_poll_time; int /*<<< orphan*/  flags2; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EICR ; 
 int IXGBE_EICR_GPI_SDP0_X540 ; 
 int FUNC0 (struct ixgbe_hw*) ; 
 int FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  IXGBE_FLAG2_SFP_NEEDS_RESET ; 
 int /*<<< orphan*/  IXGBE_FLAG_NEED_LINK_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 scalar_t__ ixgbe_mac_82599EB ; 
 scalar_t__ ixgbe_mac_X540 ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ixgbe_adapter *adapter, u32 eicr)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 eicr_mask = FUNC1(hw);

	if (!FUNC3(hw))
		return;

	/* Later MAC's use different SDP */
	if (hw->mac.type >= ixgbe_mac_X540)
		eicr_mask = IXGBE_EICR_GPI_SDP0_X540;

	if (eicr & eicr_mask) {
		/* Clear the interrupt */
		FUNC2(hw, IXGBE_EICR, eicr_mask);
		if (!FUNC5(__IXGBE_DOWN, &adapter->state)) {
			adapter->flags2 |= IXGBE_FLAG2_SFP_NEEDS_RESET;
			adapter->sfp_poll_time = 0;
			FUNC4(adapter);
		}
	}

	if (adapter->hw.mac.type == ixgbe_mac_82599EB &&
	    (eicr & FUNC0(hw))) {
		/* Clear the interrupt */
		FUNC2(hw, IXGBE_EICR, FUNC0(hw));
		if (!FUNC5(__IXGBE_DOWN, &adapter->state)) {
			adapter->flags |= IXGBE_FLAG_NEED_LINK_CONFIG;
			FUNC4(adapter);
		}
	}
}