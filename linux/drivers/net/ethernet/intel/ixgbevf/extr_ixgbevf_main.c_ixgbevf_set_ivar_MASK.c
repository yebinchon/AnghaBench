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
typedef  int u8 ;
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;
typedef  int s8 ;

/* Variables and functions */
 int IXGBE_IVAR_ALLOC_VAL ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  IXGBE_VTIVAR_MISC ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ixgbevf_adapter *adapter, s8 direction,
			     u8 queue, u8 msix_vector)
{
	u32 ivar, index;
	struct ixgbe_hw *hw = &adapter->hw;

	if (direction == -1) {
		/* other causes */
		msix_vector |= IXGBE_IVAR_ALLOC_VAL;
		ivar = FUNC0(hw, IXGBE_VTIVAR_MISC);
		ivar &= ~0xFF;
		ivar |= msix_vector;
		FUNC2(hw, IXGBE_VTIVAR_MISC, ivar);
	} else {
		/* Tx or Rx causes */
		msix_vector |= IXGBE_IVAR_ALLOC_VAL;
		index = ((16 * (queue & 1)) + (8 * direction));
		ivar = FUNC0(hw, FUNC1(queue >> 1));
		ivar &= ~(0xFF << index);
		ivar |= (msix_vector << index);
		FUNC2(hw, FUNC1(queue >> 1), ivar);
	}
}