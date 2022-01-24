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
struct e1000_hw {scalar_t__ mac_type; scalar_t__ phy_type; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_SUCCESS ; 
 scalar_t__ e1000_82544 ; 
 scalar_t__ e1000_ce4100 ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 scalar_t__ e1000_phy_igp ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw)
{
	s32 ret_val;

	if ((hw->mac_type >= e1000_82544) && (hw->mac_type != e1000_ce4100)) {
		FUNC0(hw);
	} else {
		ret_val = FUNC3(hw);
		if (ret_val) {
			FUNC4("Error configuring MAC to PHY settings\n");
			return ret_val;
		}
	}
	ret_val = FUNC2(hw);
	if (ret_val) {
		FUNC4("Error Configuring Flow Control\n");
		return ret_val;
	}

	/* Config DSP to improve Giga link quality */
	if (hw->phy_type == e1000_phy_igp) {
		ret_val = FUNC1(hw, true);
		if (ret_val) {
			FUNC4("Error Configuring DSP after link up\n");
			return ret_val;
		}
	}

	return E1000_SUCCESS;
}