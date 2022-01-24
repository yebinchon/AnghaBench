#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_8__ {struct bcma_device* core; } ;
struct bgmac {TYPE_4__ bcma; } ;
struct TYPE_5__ {scalar_t__ id; } ;
struct bcma_device {int /*<<< orphan*/  dev; TYPE_3__* bus; TYPE_1__ id; } ;
struct TYPE_6__ {struct bcma_device* core; } ;
struct TYPE_7__ {TYPE_2__ drv_gmac_cmn; } ;

/* Variables and functions */
 scalar_t__ BCMA_CORE_4706_MAC_GBIT ; 
 int BCMA_GMAC_CMN_PHY_ACCESS ; 
 int BCMA_GMAC_CMN_PHY_CTL ; 
 int BGMAC_INT_STATUS ; 
 int BGMAC_IS_MDIO ; 
 int BGMAC_PA_ADDR_SHIFT ; 
 int BGMAC_PA_REG_SHIFT ; 
 int BGMAC_PA_START ; 
 int BGMAC_PA_WRITE ; 
 int BGMAC_PC_EPA_MASK ; 
 int BGMAC_PHY_ACCESS ; 
 int BGMAC_PHY_CNTL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_device*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bcma_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct bgmac *bgmac, u8 phyaddr, u8 reg,
			       u16 value)
{
	struct bcma_device *core;
	u16 phy_access_addr;
	u16 phy_ctl_addr;
	u32 tmp;

	if (bgmac->bcma.core->id.id == BCMA_CORE_4706_MAC_GBIT) {
		core = bgmac->bcma.core->bus->drv_gmac_cmn.core;
		phy_access_addr = BCMA_GMAC_CMN_PHY_ACCESS;
		phy_ctl_addr = BCMA_GMAC_CMN_PHY_CTL;
	} else {
		core = bgmac->bcma.core;
		phy_access_addr = BGMAC_PHY_ACCESS;
		phy_ctl_addr = BGMAC_PHY_CNTL;
	}

	tmp = FUNC1(core, phy_ctl_addr);
	tmp &= ~BGMAC_PC_EPA_MASK;
	tmp |= phyaddr;
	FUNC2(core, phy_ctl_addr, tmp);

	FUNC2(bgmac->bcma.core, BGMAC_INT_STATUS, BGMAC_IS_MDIO);
	if (FUNC1(bgmac->bcma.core, BGMAC_INT_STATUS) & BGMAC_IS_MDIO)
		FUNC4(&core->dev, "Error setting MDIO int\n");

	tmp = BGMAC_PA_START;
	tmp |= BGMAC_PA_WRITE;
	tmp |= phyaddr << BGMAC_PA_ADDR_SHIFT;
	tmp |= reg << BGMAC_PA_REG_SHIFT;
	tmp |= value;
	FUNC2(core, phy_access_addr, tmp);

	if (!FUNC0(core, phy_access_addr, BGMAC_PA_START, 0,
				  1000)) {
		FUNC3(&core->dev, "Writing to PHY %d register 0x%X failed\n",
			phyaddr, reg);
		return -ETIMEDOUT;
	}

	return 0;
}