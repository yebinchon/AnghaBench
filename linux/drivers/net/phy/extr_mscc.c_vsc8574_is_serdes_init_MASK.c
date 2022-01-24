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
typedef  int u16 ;
struct phy_device {int dummy; } ;

/* Variables and functions */
 int DW8051_CLK_EN ; 
 int FUNC0 (int) ; 
 int MICRO_CLK_EN ; 
 int MICRO_NSOFT_RESET ; 
 int /*<<< orphan*/  MSCC_DW8051_CNTL_STATUS ; 
 int MSCC_DW8051_VLD_MASK ; 
 int /*<<< orphan*/  MSCC_EXT_PAGE_ACCESS ; 
 int /*<<< orphan*/  MSCC_INT_MEM_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_EXTENDED_GPIO ; 
 int /*<<< orphan*/  MSCC_PHY_PAGE_STANDARD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int RUN_FROM_INT_ROM ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct phy_device *phydev)
{
	u16 reg;
	bool ret;

	FUNC4(phydev, MSCC_EXT_PAGE_ACCESS,
		       MSCC_PHY_PAGE_EXTENDED_GPIO);

	reg = FUNC3(phydev, FUNC2(1));
	if (reg != 0x3eb7) {
		ret = false;
		goto out;
	}

	reg = FUNC3(phydev, FUNC1(1));
	if (reg != 0x4012) {
		ret = false;
		goto out;
	}

	reg = FUNC3(phydev, MSCC_INT_MEM_CNTL);
	if (reg != FUNC0(1)) {
		ret = false;
		goto out;
	}

	reg = FUNC3(phydev, MSCC_DW8051_CNTL_STATUS);
	if ((MICRO_NSOFT_RESET | RUN_FROM_INT_ROM |  DW8051_CLK_EN |
	     MICRO_CLK_EN) != (reg & MSCC_DW8051_VLD_MASK)) {
		ret = false;
		goto out;
	}

	ret = true;
out:
	FUNC4(phydev, MSCC_EXT_PAGE_ACCESS, MSCC_PHY_PAGE_STANDARD);

	return ret;
}