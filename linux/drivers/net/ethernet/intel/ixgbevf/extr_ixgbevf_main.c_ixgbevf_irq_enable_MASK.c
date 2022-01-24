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
struct ixgbevf_adapter {int /*<<< orphan*/  eims_enable_mask; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_VTEIAC ; 
 int /*<<< orphan*/  IXGBE_VTEIAM ; 
 int /*<<< orphan*/  IXGBE_VTEIMS ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct ixgbevf_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;

	FUNC0(hw, IXGBE_VTEIAM, adapter->eims_enable_mask);
	FUNC0(hw, IXGBE_VTEIAC, adapter->eims_enable_mask);
	FUNC0(hw, IXGBE_VTEIMS, adapter->eims_enable_mask);
}