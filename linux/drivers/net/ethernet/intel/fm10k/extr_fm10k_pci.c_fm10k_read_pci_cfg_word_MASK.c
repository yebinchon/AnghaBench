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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct fm10k_intfc {int /*<<< orphan*/  pdev; } ;
struct fm10k_hw {int /*<<< orphan*/  hw_addr; struct fm10k_intfc* back; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

u16 FUNC3(struct fm10k_hw *hw, u32 reg)
{
	struct fm10k_intfc *interface = hw->back;
	u16 value = 0;

	if (FUNC0(hw->hw_addr))
		return ~value;

	FUNC2(interface->pdev, reg, &value);
	if (value == 0xFFFF)
		FUNC1(hw);

	return value;
}