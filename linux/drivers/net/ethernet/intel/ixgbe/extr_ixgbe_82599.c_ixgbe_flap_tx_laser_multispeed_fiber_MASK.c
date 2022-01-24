#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int autotry_restart; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_hw *hw)
{
	/* Blocked by MNG FW so bail */
	if (FUNC0(hw))
		return;

	if (hw->mac.autotry_restart) {
		FUNC1(hw);
		FUNC2(hw);
		hw->mac.autotry_restart = false;
	}
}