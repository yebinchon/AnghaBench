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
struct ixgbevf_ring {scalar_t__ count; int /*<<< orphan*/  reg_idx; int /*<<< orphan*/  netdev; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ixgbevf_adapter* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct ixgbevf_ring *ring)
{
	struct ixgbevf_adapter *adapter = FUNC3(ring->netdev);
	struct ixgbe_hw *hw = &adapter->hw;

	u32 head = FUNC0(hw, FUNC1(ring->reg_idx));
	u32 tail = FUNC0(hw, FUNC2(ring->reg_idx));

	if (head != tail)
		return (head < tail) ?
			tail - head : (tail + ring->count - head);

	return 0;
}