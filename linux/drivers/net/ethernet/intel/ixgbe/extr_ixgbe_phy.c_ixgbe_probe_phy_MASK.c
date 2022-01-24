#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  (* read_reg ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_6__ {int prtad; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ ops; int /*<<< orphan*/  id; TYPE_3__ mdio; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_MMD_PMAPMD ; 
 int /*<<< orphan*/  MDIO_PMA_EXTABLE ; 
 int MDIO_PMA_EXTABLE_1000BT ; 
 int MDIO_PMA_EXTABLE_10GBT ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_phy_cu_unknown ; 
 scalar_t__ ixgbe_phy_generic ; 
 scalar_t__ ixgbe_phy_unknown ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC4(struct ixgbe_hw *hw, u16 phy_addr)
{
	u16 ext_ability = 0;

	hw->phy.mdio.prtad = phy_addr;
	if (FUNC2(&hw->phy.mdio, phy_addr) != 0)
		return false;

	if (FUNC0(hw))
		return false;

	hw->phy.type = FUNC1(hw->phy.id);

	if (hw->phy.type == ixgbe_phy_unknown) {
		hw->phy.ops.read_reg(hw,
				     MDIO_PMA_EXTABLE,
				     MDIO_MMD_PMAPMD,
				     &ext_ability);
		if (ext_ability &
		    (MDIO_PMA_EXTABLE_10GBT |
		     MDIO_PMA_EXTABLE_1000BT))
			hw->phy.type = ixgbe_phy_cu_unknown;
		else
			hw->phy.type = ixgbe_phy_generic;
	}

	return true;
}