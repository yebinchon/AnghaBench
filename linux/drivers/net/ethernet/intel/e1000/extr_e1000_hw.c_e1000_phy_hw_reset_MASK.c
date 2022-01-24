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
struct e1000_hw {scalar_t__ mac_type; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_EXT ; 
 int E1000_CTRL_EXT_SDP4_DATA ; 
 int E1000_CTRL_EXT_SDP4_DIR ; 
 int E1000_CTRL_PHY_RST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int IGP_ACTIVITY_LED_ENABLE ; 
 int IGP_ACTIVITY_LED_MASK ; 
 int IGP_LED3_MODE ; 
 int /*<<< orphan*/  LEDCTL ; 
 scalar_t__ e1000_82541 ; 
 scalar_t__ e1000_82543 ; 
 scalar_t__ e1000_82547 ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

s32 FUNC7(struct e1000_hw *hw)
{
	u32 ctrl, ctrl_ext;
	u32 led_ctrl;

	FUNC2("Resetting Phy...\n");

	if (hw->mac_type > e1000_82543) {
		/* Read the device control register and assert the
		 * E1000_CTRL_PHY_RST bit. Then, take it out of reset.
		 * For e1000 hardware, we delay for 10ms between the assert
		 * and de-assert.
		 */
		ctrl = FUNC3(CTRL);
		FUNC4(CTRL, ctrl | E1000_CTRL_PHY_RST);
		FUNC0();

		FUNC5(10);

		FUNC4(CTRL, ctrl);
		FUNC0();

	} else {
		/* Read the Extended Device Control Register, assert the
		 * PHY_RESET_DIR bit to put the PHY into reset. Then, take it
		 * out of reset.
		 */
		ctrl_ext = FUNC3(CTRL_EXT);
		ctrl_ext |= E1000_CTRL_EXT_SDP4_DIR;
		ctrl_ext &= ~E1000_CTRL_EXT_SDP4_DATA;
		FUNC4(CTRL_EXT, ctrl_ext);
		FUNC0();
		FUNC5(10);
		ctrl_ext |= E1000_CTRL_EXT_SDP4_DATA;
		FUNC4(CTRL_EXT, ctrl_ext);
		FUNC0();
	}
	FUNC6(150);

	if ((hw->mac_type == e1000_82541) || (hw->mac_type == e1000_82547)) {
		/* Configure activity LED after PHY reset */
		led_ctrl = FUNC3(LEDCTL);
		led_ctrl &= IGP_ACTIVITY_LED_MASK;
		led_ctrl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
		FUNC4(LEDCTL, led_ctrl);
	}

	/* Wait for FW to finish PHY configuration. */
	return FUNC1(hw);
}