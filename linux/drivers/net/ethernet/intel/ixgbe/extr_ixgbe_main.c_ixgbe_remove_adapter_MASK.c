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
struct ixgbe_hw {int /*<<< orphan*/ * hw_addr; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBE_SERVICE_INITED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_hw *hw)
{
	struct ixgbe_adapter *adapter = hw->back;

	if (!hw->hw_addr)
		return;
	hw->hw_addr = NULL;
	FUNC0("Adapter removed\n");
	if (FUNC2(__IXGBE_SERVICE_INITED, &adapter->state))
		FUNC1(adapter);
}