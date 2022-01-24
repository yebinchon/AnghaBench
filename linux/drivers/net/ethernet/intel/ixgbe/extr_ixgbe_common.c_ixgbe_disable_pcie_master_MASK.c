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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  flags; } ;
struct ixgbe_hw {int /*<<< orphan*/  hw_addr; TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_CTRL ; 
 int IXGBE_CTRL_GIO_DIS ; 
 int /*<<< orphan*/  IXGBE_ERR_MASTER_REQUESTS_PENDING ; 
 int /*<<< orphan*/  IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ; 
 int /*<<< orphan*/  IXGBE_PCI_DEVICE_STATUS ; 
 int IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING ; 
 scalar_t__ IXGBE_PCI_MASTER_DISABLE_TIMEOUT ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_STATUS ; 
 int IXGBE_STATUS_GIO ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,char*) ; 
 scalar_t__ ixgbe_mac_X550 ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*) ; 
 int FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static s32 FUNC8(struct ixgbe_hw *hw)
{
	u32 i, poll;
	u16 value;

	/* Always set this bit to ensure any future transactions are blocked */
	FUNC1(hw, IXGBE_CTRL, IXGBE_CTRL_GIO_DIS);

	/* Poll for bit to read as set */
	for (i = 0; i < IXGBE_PCI_MASTER_DISABLE_TIMEOUT; i++) {
		if (FUNC0(hw, IXGBE_CTRL) & IXGBE_CTRL_GIO_DIS)
			break;
		FUNC7(100, 120);
	}
	if (i >= IXGBE_PCI_MASTER_DISABLE_TIMEOUT) {
		FUNC2(hw, "GIO disable did not set - requesting resets\n");
		goto gio_disable_fail;
	}

	/* Exit if master requests are blocked */
	if (!(FUNC0(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO) ||
	    FUNC5(hw->hw_addr))
		return 0;

	/* Poll for master request bit to clear */
	for (i = 0; i < IXGBE_PCI_MASTER_DISABLE_TIMEOUT; i++) {
		FUNC6(100);
		if (!(FUNC0(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO))
			return 0;
	}

	/*
	 * Two consecutive resets are required via CTRL.RST per datasheet
	 * 5.2.5.3.2 Master Disable.  We set a flag to inform the reset routine
	 * of this need.  The first reset prevents new master requests from
	 * being issued by our device.  We then must wait 1usec or more for any
	 * remaining completions from the PCIe bus to trickle in, and then reset
	 * again to clear out any effects they may have had on our device.
	 */
	FUNC2(hw, "GIO Master Disable bit didn't clear - requesting resets\n");
gio_disable_fail:
	hw->mac.flags |= IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;

	if (hw->mac.type >= ixgbe_mac_X550)
		return 0;

	/*
	 * Before proceeding, make sure that the PCIe block does not have
	 * transactions pending.
	 */
	poll = FUNC3(hw);
	for (i = 0; i < poll; i++) {
		FUNC6(100);
		value = FUNC4(hw, IXGBE_PCI_DEVICE_STATUS);
		if (FUNC5(hw->hw_addr))
			return 0;
		if (!(value & IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING))
			return 0;
	}

	FUNC2(hw, "PCIe transaction pending bit also did not clear.\n");
	return IXGBE_ERR_MASTER_REQUESTS_PENDING;
}