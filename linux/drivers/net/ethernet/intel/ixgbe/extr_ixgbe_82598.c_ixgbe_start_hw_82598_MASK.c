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
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 

__attribute__((used)) static s32 FUNC2(struct ixgbe_hw *hw)
{
	s32 ret_val;

	ret_val = FUNC1(hw);
	if (ret_val)
		return ret_val;

	/* set the completion timeout for interface */
	FUNC0(hw);

	return 0;
}