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
typedef  int /*<<< orphan*/  u16 ;
struct ksz_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT93C_CODE ; 
 int /*<<< orphan*/  AT93C_ERASE ; 
 int /*<<< orphan*/  AT93C_WRITE ; 
 int /*<<< orphan*/  AT93C_WR_OFF ; 
 int /*<<< orphan*/  AT93C_WR_ON ; 
 int EEPROM_ACCESS_ENABLE ; 
 int EEPROM_CHIP_SELECT ; 
 int /*<<< orphan*/  EEPROM_DATA_IN ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ksz_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ksz_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ksz_hw *hw, u8 reg, u16 data)
{
	int timeout;

	FUNC2(hw, EEPROM_ACCESS_ENABLE | EEPROM_CHIP_SELECT);

	/* Enable write. */
	FUNC3(hw, AT93C_CODE, AT93C_WR_ON);
	FUNC0(hw, EEPROM_CHIP_SELECT);
	FUNC6(1);

	/* Erase the register. */
	FUNC2(hw, EEPROM_CHIP_SELECT);
	FUNC3(hw, AT93C_ERASE, reg);
	FUNC0(hw, EEPROM_CHIP_SELECT);
	FUNC6(1);

	/* Check operation complete. */
	FUNC2(hw, EEPROM_CHIP_SELECT);
	timeout = 8;
	FUNC1(2);
	do {
		FUNC1(1);
	} while (!FUNC5(hw, EEPROM_DATA_IN) && --timeout);
	FUNC0(hw, EEPROM_CHIP_SELECT);
	FUNC6(1);

	/* Write the register. */
	FUNC2(hw, EEPROM_CHIP_SELECT);
	FUNC3(hw, AT93C_WRITE, reg);
	FUNC4(hw, data);
	FUNC0(hw, EEPROM_CHIP_SELECT);
	FUNC6(1);

	/* Check operation complete. */
	FUNC2(hw, EEPROM_CHIP_SELECT);
	timeout = 8;
	FUNC1(2);
	do {
		FUNC1(1);
	} while (!FUNC5(hw, EEPROM_DATA_IN) && --timeout);
	FUNC0(hw, EEPROM_CHIP_SELECT);
	FUNC6(1);

	/* Disable write. */
	FUNC2(hw, EEPROM_CHIP_SELECT);
	FUNC3(hw, AT93C_CODE, AT93C_WR_OFF);

	FUNC0(hw, EEPROM_ACCESS_ENABLE | EEPROM_CHIP_SELECT);
}