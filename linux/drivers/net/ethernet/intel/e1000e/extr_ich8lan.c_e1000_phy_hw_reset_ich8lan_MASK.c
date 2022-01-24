#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int E1000_ICH_FWSM_FW_VALID ; 
 int /*<<< orphan*/  FWSM ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int) ; 
 scalar_t__ e1000_pch2lan ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC4(struct e1000_hw *hw)
{
	s32 ret_val = 0;

	/* Gate automatic PHY configuration by hardware on non-managed 82579 */
	if ((hw->mac.type == e1000_pch2lan) &&
	    !(FUNC3(FWSM) & E1000_ICH_FWSM_FW_VALID))
		FUNC0(hw, true);

	ret_val = FUNC2(hw);
	if (ret_val)
		return ret_val;

	return FUNC1(hw);
}