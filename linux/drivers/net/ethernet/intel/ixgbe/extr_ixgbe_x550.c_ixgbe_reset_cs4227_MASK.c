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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_CS4227_CHECK_DELAY ; 
 int IXGBE_CS4227_EEPROM_LOAD_OK ; 
 int /*<<< orphan*/  IXGBE_CS4227_EEPROM_STATUS ; 
 int /*<<< orphan*/  IXGBE_CS4227_EFUSE_STATUS ; 
 int /*<<< orphan*/  IXGBE_CS4227_RESET_DELAY ; 
 scalar_t__ IXGBE_CS4227_RESET_HOLD ; 
 scalar_t__ IXGBE_CS4227_RETRIES ; 
 scalar_t__ IXGBE_ERR_PHY ; 
 int /*<<< orphan*/  IXGBE_PE_BIT1 ; 
 int /*<<< orphan*/  IXGBE_PE_CONFIG ; 
 int /*<<< orphan*/  IXGBE_PE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,char*) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static s32 FUNC6(struct ixgbe_hw *hw)
{
	s32 status;
	u32 retry;
	u16 value;
	u8 reg;

	/* Trigger hard reset. */
	status = FUNC2(hw, IXGBE_PE_OUTPUT, &reg);
	if (status)
		return status;
	reg |= IXGBE_PE_BIT1;
	status = FUNC3(hw, IXGBE_PE_OUTPUT, reg);
	if (status)
		return status;

	status = FUNC2(hw, IXGBE_PE_CONFIG, &reg);
	if (status)
		return status;
	reg &= ~IXGBE_PE_BIT1;
	status = FUNC3(hw, IXGBE_PE_CONFIG, reg);
	if (status)
		return status;

	status = FUNC2(hw, IXGBE_PE_OUTPUT, &reg);
	if (status)
		return status;
	reg &= ~IXGBE_PE_BIT1;
	status = FUNC3(hw, IXGBE_PE_OUTPUT, reg);
	if (status)
		return status;

	FUNC5(IXGBE_CS4227_RESET_HOLD, IXGBE_CS4227_RESET_HOLD + 100);

	status = FUNC2(hw, IXGBE_PE_OUTPUT, &reg);
	if (status)
		return status;
	reg |= IXGBE_PE_BIT1;
	status = FUNC3(hw, IXGBE_PE_OUTPUT, reg);
	if (status)
		return status;

	/* Wait for the reset to complete. */
	FUNC4(IXGBE_CS4227_RESET_DELAY);
	for (retry = 0; retry < IXGBE_CS4227_RETRIES; retry++) {
		status = FUNC1(hw, IXGBE_CS4227_EFUSE_STATUS,
					   &value);
		if (!status && value == IXGBE_CS4227_EEPROM_LOAD_OK)
			break;
		FUNC4(IXGBE_CS4227_CHECK_DELAY);
	}
	if (retry == IXGBE_CS4227_RETRIES) {
		FUNC0(hw, "CS4227 reset did not complete\n");
		return IXGBE_ERR_PHY;
	}

	status = FUNC1(hw, IXGBE_CS4227_EEPROM_STATUS, &value);
	if (status || !(value & IXGBE_CS4227_EEPROM_LOAD_OK)) {
		FUNC0(hw, "CS4227 EEPROM did not load successfully\n");
		return IXGBE_ERR_PHY;
	}

	return 0;
}