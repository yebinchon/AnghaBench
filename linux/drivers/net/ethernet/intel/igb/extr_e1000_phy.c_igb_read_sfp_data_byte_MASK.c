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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ERR_PHY ; 
 int /*<<< orphan*/  E1000_I2CCMD ; 
 scalar_t__ E1000_I2CCMD_ERROR ; 
 scalar_t__ E1000_I2CCMD_OPCODE_READ ; 
 scalar_t__ E1000_I2CCMD_PHY_TIMEOUT ; 
 scalar_t__ E1000_I2CCMD_READY ; 
 scalar_t__ E1000_I2CCMD_REG_ADDR_SHIFT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

s32 FUNC5(struct e1000_hw *hw, u16 offset, u8 *data)
{
	u32 i = 0;
	u32 i2ccmd = 0;
	u32 data_local = 0;

	if (offset > FUNC0(255)) {
		FUNC1("I2CCMD command address exceeds upper limit\n");
		return -E1000_ERR_PHY;
	}

	/* Set up Op-code, EEPROM Address,in the I2CCMD
	 * register. The MAC will take care of interfacing with the
	 * EEPROM to retrieve the desired data.
	 */
	i2ccmd = ((offset << E1000_I2CCMD_REG_ADDR_SHIFT) |
		  E1000_I2CCMD_OPCODE_READ);

	FUNC4(E1000_I2CCMD, i2ccmd);

	/* Poll the ready bit to see if the I2C read completed */
	for (i = 0; i < E1000_I2CCMD_PHY_TIMEOUT; i++) {
		FUNC3(50);
		data_local = FUNC2(E1000_I2CCMD);
		if (data_local & E1000_I2CCMD_READY)
			break;
	}
	if (!(data_local & E1000_I2CCMD_READY)) {
		FUNC1("I2CCMD Read did not complete\n");
		return -E1000_ERR_PHY;
	}
	if (data_local & E1000_I2CCMD_ERROR) {
		FUNC1("I2CCMD Error bit set\n");
		return -E1000_ERR_PHY;
	}
	*data = (u8) data_local & 0xFF;

	return 0;
}