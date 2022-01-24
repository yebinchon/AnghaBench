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
typedef  int /*<<< orphan*/  u16 ;
struct ixgb_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_READ_OPCODE ; 
 int /*<<< orphan*/  FUNC0 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*) ; 

u16
FUNC4(struct ixgb_hw *hw,
		  u16 offset)
{
	u16 data;

	/*  Prepare the EEPROM for reading  */
	FUNC0(hw);

	/*  Send the READ command (opcode + addr)  */
	FUNC2(hw, EEPROM_READ_OPCODE, 3);
	/*
	 * We have a 64 word EEPROM, there are 6 address bits
	 */
	FUNC2(hw, offset, 6);

	/*  Read the data  */
	data = FUNC1(hw);

	/*  End this read operation  */
	FUNC3(hw);

	return data;
}