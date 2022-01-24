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
struct phy_device {scalar_t__ interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIN1300_GE_RMII_CFG_REG ; 
 int ADIN1300_GE_RMII_EN ; 
 int ADIN1300_GE_RMII_FIFO_DEPTH_MSK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADIN1300_RMII_8_BITS ; 
 int /*<<< orphan*/  MDIO_MMD_VEND1 ; 
 scalar_t__ PHY_INTERFACE_MODE_RMII ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adin_rmii_fifo_depths ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev)
{
	u32 val;
	int reg;

	if (phydev->interface != PHY_INTERFACE_MODE_RMII)
		return FUNC2(phydev, MDIO_MMD_VEND1,
					  ADIN1300_GE_RMII_CFG_REG,
					  ADIN1300_GE_RMII_EN);

	reg = FUNC3(phydev, MDIO_MMD_VEND1, ADIN1300_GE_RMII_CFG_REG);
	if (reg < 0)
		return reg;

	reg |= ADIN1300_GE_RMII_EN;

	val = FUNC1(phydev, "adi,fifo-depth-bits",
				 adin_rmii_fifo_depths,
				 ADIN1300_RMII_8_BITS);

	reg &= ~ADIN1300_GE_RMII_FIFO_DEPTH_MSK;
	reg |= FUNC0(val);

	return FUNC4(phydev, MDIO_MMD_VEND1,
			     ADIN1300_GE_RMII_CFG_REG, reg);
}