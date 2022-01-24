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
typedef  int u32 ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct e1000_adapter {int num_vectors; scalar_t__ msix_entries; struct e1000_hw hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ITR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

void FUNC3(struct e1000_adapter *adapter, u32 itr)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 new_itr = itr ? 1000000000 / (itr * 256) : 0;

	if (adapter->msix_entries) {
		int vector;

		for (vector = 0; vector < adapter->num_vectors; vector++)
			FUNC2(new_itr, hw->hw_addr + FUNC0(vector));
	} else {
		FUNC1(ITR, new_itr);
	}
}