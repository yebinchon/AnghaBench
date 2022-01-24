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
typedef  scalar_t__ u16 ;
struct ixgb_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ EEPROM_CHECKSUM_REG ; 
 scalar_t__ EEPROM_SUM ; 
 scalar_t__ FUNC0 (struct ixgb_hw*,scalar_t__) ; 

bool
FUNC1(struct ixgb_hw *hw)
{
	u16 checksum = 0;
	u16 i;

	for (i = 0; i < (EEPROM_CHECKSUM_REG + 1); i++)
		checksum += FUNC0(hw, i);

	if (checksum == (u16) EEPROM_SUM)
		return true;
	else
		return false;
}