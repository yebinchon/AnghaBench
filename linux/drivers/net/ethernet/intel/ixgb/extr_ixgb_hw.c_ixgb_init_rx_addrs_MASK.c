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
typedef  int u32 ;
struct ixgb_hw {int /*<<< orphan*/  curr_mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int IXGB_RAR_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void
FUNC6(struct ixgb_hw *hw)
{
	u32 i;

	FUNC0();

	/*
	 * If the current mac address is valid, assume it is a software override
	 * to the permanent address.
	 * Otherwise, use the permanent address from the eeprom.
	 */
	if (!FUNC4(hw->curr_mac_addr)) {

		/* Get the MAC address from the eeprom for later reference */
		FUNC2(hw, hw->curr_mac_addr);

		FUNC5("Keeping Permanent MAC Addr = %pM\n",
			 hw->curr_mac_addr);
	} else {

		/* Setup the receive address. */
		FUNC5("Overriding MAC Address in RAR[0]\n");
		FUNC5("New MAC Addr = %pM\n", hw->curr_mac_addr);

		FUNC3(hw, hw->curr_mac_addr, 0);
	}

	/* Zero out the other 15 receive addresses. */
	FUNC5("Clearing RAR[1-15]\n");
	for (i = 1; i < IXGB_RAR_ENTRIES; i++) {
		/* Write high reg first to disable the AV bit first */
		FUNC1(hw, RA, ((i << 1) + 1), 0);
		FUNC1(hw, RA, (i << 1), 0);
	}
}