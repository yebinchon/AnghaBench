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
typedef  int u16 ;
struct TYPE_2__ {int mmds; } ;
struct alx_hw {TYPE_1__ mdio; int /*<<< orphan*/ * phy_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_DEVS1 ; 
 int /*<<< orphan*/  MDIO_DEVS2 ; 
 int /*<<< orphan*/  MII_PHYSID1 ; 
 int /*<<< orphan*/  MII_PHYSID2 ; 
 scalar_t__ FUNC0 (struct alx_hw*,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct alx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC2(struct alx_hw *hw)
{
	u16  devs1, devs2;

	if (FUNC1(hw, MII_PHYSID1, &hw->phy_id[0]) ||
	    FUNC1(hw, MII_PHYSID2, &hw->phy_id[1]))
		return false;

	/* since we haven't PMA/PMD status2 register, we can't
	 * use mdio45_probe function for prtad and mmds.
	 * use fixed MMD3 to get mmds.
	 */
	if (FUNC0(hw, 3, MDIO_DEVS1, &devs1) ||
	    FUNC0(hw, 3, MDIO_DEVS2, &devs2))
		return false;
	hw->mdio.mmds = devs1 | devs2 << 16;

	return true;
}