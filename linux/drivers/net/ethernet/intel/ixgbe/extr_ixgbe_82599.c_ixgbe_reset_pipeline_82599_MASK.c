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
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ANLP1 ; 
 int IXGBE_ANLP1_AN_STATE_MASK ; 
 int /*<<< orphan*/  IXGBE_AUTOC ; 
 int /*<<< orphan*/  IXGBE_AUTOC2 ; 
 int IXGBE_AUTOC2_LINK_DISABLE_MASK ; 
 int IXGBE_AUTOC_AN_RESTART ; 
 int IXGBE_AUTOC_LMS_SHIFT ; 
 scalar_t__ IXGBE_ERR_RESET_FAILED ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw)
{
	s32 ret_val;
	u32 anlp1_reg = 0;
	u32 i, autoc_reg, autoc2_reg;

	/* Enable link if disabled in NVM */
	autoc2_reg = FUNC0(hw, IXGBE_AUTOC2);
	if (autoc2_reg & IXGBE_AUTOC2_LINK_DISABLE_MASK) {
		autoc2_reg &= ~IXGBE_AUTOC2_LINK_DISABLE_MASK;
		FUNC2(hw, IXGBE_AUTOC2, autoc2_reg);
		FUNC1(hw);
	}

	autoc_reg = FUNC0(hw, IXGBE_AUTOC);
	autoc_reg |= IXGBE_AUTOC_AN_RESTART;

	/* Write AUTOC register with toggled LMS[2] bit and Restart_AN */
	FUNC2(hw, IXGBE_AUTOC,
			autoc_reg ^ (0x4 << IXGBE_AUTOC_LMS_SHIFT));

	/* Wait for AN to leave state 0 */
	for (i = 0; i < 10; i++) {
		FUNC4(4000, 8000);
		anlp1_reg = FUNC0(hw, IXGBE_ANLP1);
		if (anlp1_reg & IXGBE_ANLP1_AN_STATE_MASK)
			break;
	}

	if (!(anlp1_reg & IXGBE_ANLP1_AN_STATE_MASK)) {
		FUNC3(hw, "auto negotiation not completed\n");
		ret_val = IXGBE_ERR_RESET_FAILED;
		goto reset_pipeline_out;
	}

	ret_val = 0;

reset_pipeline_out:
	/* Write AUTOC register with original LMS field and Restart_AN */
	FUNC2(hw, IXGBE_AUTOC, autoc_reg);
	FUNC1(hw);

	return ret_val;
}