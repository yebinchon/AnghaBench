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
struct ixgb_hw {int link_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int IXGB_STATUS_LU ; 
 int IXGB_XPCSS_ALIGN_STATUS ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  XPCSS ; 
 void* FUNC2 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct ixgb_hw *hw)
{
	u32 status_reg;
	u32 xpcss_reg;

	FUNC0();

	xpcss_reg = FUNC1(hw, XPCSS);
	status_reg = FUNC1(hw, STATUS);

	if ((xpcss_reg & IXGB_XPCSS_ALIGN_STATUS) &&
	    (status_reg & IXGB_STATUS_LU)) {
		hw->link_up = true;
	} else if (!(xpcss_reg & IXGB_XPCSS_ALIGN_STATUS) &&
		   (status_reg & IXGB_STATUS_LU)) {
		FUNC3("XPCSS Not Aligned while Status:LU is set\n");
		hw->link_up = FUNC2(hw);
	} else {
		/*
		 * 82597EX errata.  Since the lane deskew problem may prevent
		 * link, reset the link before reporting link down.
		 */
		hw->link_up = FUNC2(hw);
	}
	/*  Anything else for 10 Gig?? */
}