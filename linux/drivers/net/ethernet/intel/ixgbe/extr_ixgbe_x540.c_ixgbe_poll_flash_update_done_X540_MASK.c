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
typedef  scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 scalar_t__ IXGBE_EEC_FLUDONE ; 
 int /*<<< orphan*/  IXGBE_ERR_EEPROM ; 
 scalar_t__ IXGBE_FLUDONE_ATTEMPTS ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static s32 FUNC3(struct ixgbe_hw *hw)
{
	u32 i;
	u32 reg;

	for (i = 0; i < IXGBE_FLUDONE_ATTEMPTS; i++) {
		reg = FUNC1(hw, FUNC0(hw));
		if (reg & IXGBE_EEC_FLUDONE)
			return 0;
		FUNC2(5);
	}
	return IXGBE_ERR_EEPROM;
}