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
struct ixgbe_hw {scalar_t__ revision_id; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int IXGBE_EEC_FLUP ; 
 int IXGBE_EEC_SEC1VAL ; 
 scalar_t__ IXGBE_ERR_EEPROM ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,char*) ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw)
{
	u32 flup;
	s32 status;

	status = FUNC4(hw);
	if (status == IXGBE_ERR_EEPROM) {
		FUNC3(hw, "Flash update time out\n");
		return status;
	}

	flup = FUNC1(hw, FUNC0(hw)) | IXGBE_EEC_FLUP;
	FUNC2(hw, FUNC0(hw), flup);

	status = FUNC4(hw);
	if (status == 0)
		FUNC3(hw, "Flash update complete\n");
	else
		FUNC3(hw, "Flash update time out\n");

	if (hw->revision_id == 0) {
		flup = FUNC1(hw, FUNC0(hw));

		if (flup & IXGBE_EEC_SEC1VAL) {
			flup |= IXGBE_EEC_FLUP;
			FUNC2(hw, FUNC0(hw), flup);
		}

		status = FUNC4(hw);
		if (status == 0)
			FUNC3(hw, "Flash update complete\n");
		else
			FUNC3(hw, "Flash update time out\n");
	}

	return status;
}