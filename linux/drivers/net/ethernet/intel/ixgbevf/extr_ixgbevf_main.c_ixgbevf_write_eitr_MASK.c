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
struct ixgbevf_q_vector {int v_idx; int itr; struct ixgbevf_adapter* adapter; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int IXGBE_EITR_CNT_WDIS ; 
 int IXGBE_MAX_EITR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct ixgbevf_q_vector *q_vector)
{
	struct ixgbevf_adapter *adapter = q_vector->adapter;
	struct ixgbe_hw *hw = &adapter->hw;
	int v_idx = q_vector->v_idx;
	u32 itr_reg = q_vector->itr & IXGBE_MAX_EITR;

	/* set the WDIS bit to not clear the timer bits and cause an
	 * immediate assertion of the interrupt
	 */
	itr_reg |= IXGBE_EITR_CNT_WDIS;

	FUNC1(hw, FUNC0(v_idx), itr_reg);
}