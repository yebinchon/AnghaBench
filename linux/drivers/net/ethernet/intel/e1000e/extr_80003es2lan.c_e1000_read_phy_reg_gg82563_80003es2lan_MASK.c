#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {scalar_t__ mdic_wa_enable; } ;
struct TYPE_4__ {TYPE_1__ e80003es2lan; } ;
struct e1000_hw {TYPE_2__ dev_spec; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_ERR_PHY ; 
 int GG82563_MIN_ALT_REG ; 
 int GG82563_PAGE_SHIFT ; 
 int GG82563_PHY_PAGE_SELECT ; 
 int GG82563_PHY_PAGE_SELECT_ALT ; 
 int MAX_PHY_REG_ADDRESS ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int,int*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw,
						  u32 offset, u16 *data)
{
	s32 ret_val;
	u32 page_select;
	u16 temp;

	ret_val = FUNC0(hw);
	if (ret_val)
		return ret_val;

	/* Select Configuration Page */
	if ((offset & MAX_PHY_REG_ADDRESS) < GG82563_MIN_ALT_REG) {
		page_select = GG82563_PHY_PAGE_SELECT;
	} else {
		/* Use Alternative Page Select register to access
		 * registers 30 and 31
		 */
		page_select = GG82563_PHY_PAGE_SELECT_ALT;
	}

	temp = (u16)((u16)offset >> GG82563_PAGE_SHIFT);
	ret_val = FUNC3(hw, page_select, temp);
	if (ret_val) {
		FUNC1(hw);
		return ret_val;
	}

	if (hw->dev_spec.e80003es2lan.mdic_wa_enable) {
		/* The "ready" bit in the MDIC register may be incorrectly set
		 * before the device has completed the "Page Select" MDI
		 * transaction.  So we wait 200us after each MDI command...
		 */
		FUNC4(200, 400);

		/* ...and verify the command was successful. */
		ret_val = FUNC2(hw, page_select, &temp);

		if (((u16)offset >> GG82563_PAGE_SHIFT) != temp) {
			FUNC1(hw);
			return -E1000_ERR_PHY;
		}

		FUNC4(200, 400);

		ret_val = FUNC2(hw,
						   MAX_PHY_REG_ADDRESS & offset,
						   data);

		FUNC4(200, 400);
	} else {
		ret_val = FUNC2(hw,
						   MAX_PHY_REG_ADDRESS & offset,
						   data);
	}

	FUNC1(hw);

	return ret_val;
}