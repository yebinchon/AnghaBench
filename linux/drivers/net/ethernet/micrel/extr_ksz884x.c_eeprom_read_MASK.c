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
 int /*<<< orphan*/  AT93C_READ ; 
 int EEPROM_ACCESS_ENABLE ; 
 int EEPROM_CHIP_SELECT ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC4(struct ksz_hw *hw, u8 reg)
{
	u16 data;

	FUNC1(hw, EEPROM_ACCESS_ENABLE | EEPROM_CHIP_SELECT);

	FUNC3(hw, AT93C_READ, reg);
	data = FUNC2(hw);

	FUNC0(hw, EEPROM_ACCESS_ENABLE | EEPROM_CHIP_SELECT);

	return data;
}