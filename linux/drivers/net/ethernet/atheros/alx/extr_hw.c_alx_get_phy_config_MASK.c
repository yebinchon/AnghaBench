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
typedef  scalar_t__ u16 ;
struct alx_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_DRV ; 
 int /*<<< orphan*/  ALX_DRV_PHY ; 
 scalar_t__ ALX_DRV_PHY_UNKNOWN ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ALX_MII_DBG_ADDR ; 
 int /*<<< orphan*/  ALX_PHY_CTRL ; 
 scalar_t__ ALX_PHY_CTRL_DSPRST_OUT ; 
 scalar_t__ ALX_PHY_INITED ; 
 scalar_t__ FUNC1 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static u16 FUNC3(struct alx_hw *hw)
{
	u32 val;
	u16 phy_val;

	val = FUNC1(hw, ALX_PHY_CTRL);
	/* phy in reset */
	if ((val & ALX_PHY_CTRL_DSPRST_OUT) == 0)
		return ALX_DRV_PHY_UNKNOWN;

	val = FUNC1(hw, ALX_DRV);
	val = FUNC0(val, ALX_DRV_PHY);
	if (ALX_DRV_PHY_UNKNOWN == val)
		return ALX_DRV_PHY_UNKNOWN;

	FUNC2(hw, ALX_MII_DBG_ADDR, &phy_val);
	if (ALX_PHY_INITED == phy_val)
		return val;

	return ALX_DRV_PHY_UNKNOWN;
}