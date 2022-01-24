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

/* Variables and functions */
 scalar_t__ IXGBE_FAILED_READ_REG ; 
 scalar_t__ IXGBE_VFSTATUS ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 

__attribute__((used)) static void FUNC2(struct ixgbe_hw *hw, u32 reg)
{
	u32 value;

	/* The following check not only optimizes a bit by not
	 * performing a read on the status register when the
	 * register just read was a status register read that
	 * returned IXGBE_FAILED_READ_REG. It also blocks any
	 * potential recursion.
	 */
	if (reg == IXGBE_VFSTATUS) {
		FUNC1(hw);
		return;
	}
	value = FUNC0(hw, IXGBE_VFSTATUS);
	if (value == IXGBE_FAILED_READ_REG)
		FUNC1(hw);
}