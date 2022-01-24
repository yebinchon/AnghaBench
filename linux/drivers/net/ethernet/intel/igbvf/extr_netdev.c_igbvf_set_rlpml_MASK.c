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
struct e1000_hw {int /*<<< orphan*/  mbx_lock; } ;
struct igbvf_adapter {int max_frame_size; struct e1000_hw hw; } ;

/* Variables and functions */
 int VLAN_TAG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct igbvf_adapter *adapter)
{
	int max_frame_size;
	struct e1000_hw *hw = &adapter->hw;

	max_frame_size = adapter->max_frame_size + VLAN_TAG_SIZE;

	FUNC1(&hw->mbx_lock);

	FUNC0(hw, max_frame_size);

	FUNC2(&hw->mbx_lock);
}