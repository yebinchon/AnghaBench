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
struct e1000_ring {int /*<<< orphan*/  tail; struct e1000_adapter* adapter; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  reset_task; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int E1000_RCTL_EN ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct e1000_ring *rx_ring, unsigned int i)
{
	struct e1000_adapter *adapter = rx_ring->adapter;
	struct e1000_hw *hw = &adapter->hw;
	s32 ret_val = FUNC0(hw);

	FUNC7(i, rx_ring->tail);

	if (FUNC6(!ret_val && (i != FUNC4(rx_ring->tail)))) {
		u32 rctl = FUNC2(RCTL);

		FUNC3(RCTL, rctl & ~E1000_RCTL_EN);
		FUNC1("ME firmware caused invalid RDT - resetting\n");
		FUNC5(&adapter->reset_task);
	}
}