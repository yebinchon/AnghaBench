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
struct phy_device {int mdix_ctrl; } ;

/* Variables and functions */
 int ADIN1300_AUTO_MDI_EN ; 
 int ADIN1300_MAN_MDIX_EN ; 
 int /*<<< orphan*/  ADIN1300_PHY_CTRL1 ; 
 int EINVAL ; 
#define  ETH_TP_MDI 130 
#define  ETH_TP_MDI_AUTO 129 
#define  ETH_TP_MDI_X 128 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	bool auto_en, mdix_en;
	int reg;

	mdix_en = false;
	auto_en = false;
	switch (phydev->mdix_ctrl) {
	case ETH_TP_MDI:
		break;
	case ETH_TP_MDI_X:
		mdix_en = true;
		break;
	case ETH_TP_MDI_AUTO:
		auto_en = true;
		break;
	default:
		return -EINVAL;
	}

	reg = FUNC0(phydev, ADIN1300_PHY_CTRL1);
	if (reg < 0)
		return reg;

	if (mdix_en)
		reg |= ADIN1300_MAN_MDIX_EN;
	else
		reg &= ~ADIN1300_MAN_MDIX_EN;

	if (auto_en)
		reg |= ADIN1300_AUTO_MDI_EN;
	else
		reg &= ~ADIN1300_AUTO_MDI_EN;

	return FUNC1(phydev, ADIN1300_PHY_CTRL1, reg);
}