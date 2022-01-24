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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int DISABLE_HP_AUTO_MDIX_MASK ; 
 int DISABLE_PAIR_SWAP_CORR_MASK ; 
 int DISABLE_POLARITY_CORR_MASK ; 
 scalar_t__ ETH_TP_MDI ; 
 scalar_t__ ETH_TP_MDI_X ; 
 int /*<<< orphan*/  FORCE_MDI_CROSSOVER_MASK ; 
 int FORCE_MDI_CROSSOVER_MDI ; 
 int FORCE_MDI_CROSSOVER_MDIX ; 
 int /*<<< orphan*/  MSCC_PHY_BYPASS_CONTROL ; 
 int /*<<< orphan*/  MSCC_PHY_EXT_MODE_CNTL ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_EXTENDED ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev, u8 mdix)
{
	int rc;
	u16 reg_val;

	reg_val = FUNC2(phydev, MSCC_PHY_BYPASS_CONTROL);
	if (mdix == ETH_TP_MDI || mdix == ETH_TP_MDI_X) {
		reg_val |= (DISABLE_PAIR_SWAP_CORR_MASK |
			    DISABLE_POLARITY_CORR_MASK  |
			    DISABLE_HP_AUTO_MDIX_MASK);
	} else {
		reg_val &= ~(DISABLE_PAIR_SWAP_CORR_MASK |
			     DISABLE_POLARITY_CORR_MASK  |
			     DISABLE_HP_AUTO_MDIX_MASK);
	}
	rc = FUNC3(phydev, MSCC_PHY_BYPASS_CONTROL, reg_val);
	if (rc)
		return rc;

	reg_val = 0;

	if (mdix == ETH_TP_MDI)
		reg_val = FORCE_MDI_CROSSOVER_MDI;
	else if (mdix == ETH_TP_MDI_X)
		reg_val = FORCE_MDI_CROSSOVER_MDIX;

	rc = FUNC1(phydev, MSCC_PHY_PAGE_EXTENDED,
			      MSCC_PHY_EXT_MODE_CNTL, FORCE_MDI_CROSSOVER_MASK,
			      reg_val);
	if (rc < 0)
		return rc;

	return FUNC0(phydev);
}