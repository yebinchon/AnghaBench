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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int phy_hang_count; int /*<<< orphan*/  reset_task; struct e1000_hw hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;

	/* With 82574 controllers, PHY needs to be checked periodically
	 * for hung state and reset, if two calls return true
	 */
	if (FUNC0(hw))
		adapter->phy_hang_count++;
	else
		adapter->phy_hang_count = 0;

	if (adapter->phy_hang_count > 1) {
		adapter->phy_hang_count = 0;
		FUNC1("PHY appears hung - resetting\n");
		FUNC2(&adapter->reset_task);
	}
}