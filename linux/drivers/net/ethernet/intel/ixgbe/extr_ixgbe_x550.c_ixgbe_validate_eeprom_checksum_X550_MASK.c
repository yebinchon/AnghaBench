#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int (* read ) (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__*) ;int (* calc_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EEPROM_CHECKSUM ; 
 int IXGBE_ERR_EEPROM_CHECKSUM ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,char*) ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (struct ixgbe_hw*) ; 

__attribute__((used)) static s32 FUNC4(struct ixgbe_hw *hw,
					       u16 *checksum_val)
{
	s32 status;
	u16 checksum;
	u16 read_checksum = 0;

	/* Read the first word from the EEPROM. If this times out or fails, do
	 * not continue or we could be in for a very long wait while every
	 * EEPROM read fails
	 */
	status = hw->eeprom.ops.read(hw, 0, &checksum);
	if (status) {
		FUNC0(hw, "EEPROM read failed\n");
		return status;
	}

	status = hw->eeprom.ops.calc_checksum(hw);
	if (status < 0)
		return status;

	checksum = (u16)(status & 0xffff);

	status = FUNC1(hw, IXGBE_EEPROM_CHECKSUM,
					   &read_checksum);
	if (status)
		return status;

	/* Verify read checksum from EEPROM is the same as
	 * calculated checksum
	 */
	if (read_checksum != checksum) {
		status = IXGBE_ERR_EEPROM_CHECKSUM;
		FUNC0(hw, "Invalid EEPROM checksum");
	}

	/* If the user cares, return the calculated checksum */
	if (checksum_val)
		*checksum_val = checksum;

	return status;
}