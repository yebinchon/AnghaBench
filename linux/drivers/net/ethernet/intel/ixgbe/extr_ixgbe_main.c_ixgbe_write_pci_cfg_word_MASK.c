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
typedef  int /*<<< orphan*/  u16 ;
struct ixgbe_hw {int /*<<< orphan*/  hw_addr; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct ixgbe_hw *hw, u32 reg, u16 value)
{
	struct ixgbe_adapter *adapter = hw->back;

	if (FUNC0(hw->hw_addr))
		return;
	FUNC1(adapter->pdev, reg, value);
}