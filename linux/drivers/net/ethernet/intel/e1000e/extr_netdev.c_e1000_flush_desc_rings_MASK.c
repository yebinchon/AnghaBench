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
typedef  int u16 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  pdev; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_FEXTNVM11_DISABLE_MULR_FIX ; 
 int /*<<< orphan*/  FEXTNVM11 ; 
 int FLUSH_DESC_REQUIRED ; 
 int /*<<< orphan*/  PCICFG_DESC_RING_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC6(struct e1000_adapter *adapter)
{
	u16 hang_state;
	u32 fext_nvm11, tdlen;
	struct e1000_hw *hw = &adapter->hw;

	/* First, disable MULR fix in FEXTNVM11 */
	fext_nvm11 = FUNC3(FEXTNVM11);
	fext_nvm11 |= E1000_FEXTNVM11_DISABLE_MULR_FIX;
	FUNC4(FEXTNVM11, fext_nvm11);
	/* do nothing if we're not in faulty state, or if the queue is empty */
	tdlen = FUNC3(FUNC0(0));
	FUNC5(adapter->pdev, PCICFG_DESC_RING_STATUS,
			     &hang_state);
	if (!(hang_state & FLUSH_DESC_REQUIRED) || !tdlen)
		return;
	FUNC2(adapter);
	/* recheck, maybe the fault is caused by the rx ring */
	FUNC5(adapter->pdev, PCICFG_DESC_RING_STATUS,
			     &hang_state);
	if (hang_state & FLUSH_DESC_REQUIRED)
		FUNC1(adapter);
}