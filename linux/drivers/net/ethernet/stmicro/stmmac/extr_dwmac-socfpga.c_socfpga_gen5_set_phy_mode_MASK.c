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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  tse_pcs_base; } ;
struct socfpga_dwmac {int reg_offset; int reg_shift; int /*<<< orphan*/  dev; TYPE_1__ pcs; int /*<<< orphan*/  stmmac_rst; int /*<<< orphan*/  stmmac_ocp_rst; scalar_t__ f2h_ptp_ref_clk; scalar_t__ splitter_base; struct regmap* sys_mgr_base_addr; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PHY_INTERFACE_MODE_GMII ; 
 int PHY_INTERFACE_MODE_MII ; 
 int PHY_INTERFACE_MODE_SGMII ; 
 int SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII ; 
 int SYSMGR_EMACGRP_CTRL_PHYSEL_MASK ; 
 int SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK ; 
 int SYSMGR_FPGAGRP_MODULE_EMAC ; 
 int SYSMGR_FPGAGRP_MODULE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct socfpga_dwmac*) ; 
 scalar_t__ FUNC6 (int,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct socfpga_dwmac *dwmac)
{
	struct regmap *sys_mgr_base_addr = dwmac->sys_mgr_base_addr;
	int phymode = FUNC5(dwmac);
	u32 reg_offset = dwmac->reg_offset;
	u32 reg_shift = dwmac->reg_shift;
	u32 ctrl, val, module;

	if (FUNC6(phymode, &val)) {
		FUNC0(dwmac->dev, "bad phy mode %d\n", phymode);
		return -EINVAL;
	}

	/* Overwrite val to GMII if splitter core is enabled. The phymode here
	 * is the actual phy mode on phy hardware, but phy interface from
	 * EMAC core is GMII.
	 */
	if (dwmac->splitter_base)
		val = SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII;

	/* Assert reset to the enet controller before changing the phy mode */
	FUNC3(dwmac->stmmac_ocp_rst);
	FUNC3(dwmac->stmmac_rst);

	FUNC1(sys_mgr_base_addr, reg_offset, &ctrl);
	ctrl &= ~(SYSMGR_EMACGRP_CTRL_PHYSEL_MASK << reg_shift);
	ctrl |= val << reg_shift;

	if (dwmac->f2h_ptp_ref_clk ||
	    phymode == PHY_INTERFACE_MODE_MII ||
	    phymode == PHY_INTERFACE_MODE_GMII ||
	    phymode == PHY_INTERFACE_MODE_SGMII) {
		ctrl |= SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK << (reg_shift / 2);
		FUNC1(sys_mgr_base_addr, SYSMGR_FPGAGRP_MODULE_REG,
			    &module);
		module |= (SYSMGR_FPGAGRP_MODULE_EMAC << (reg_shift / 2));
		FUNC2(sys_mgr_base_addr, SYSMGR_FPGAGRP_MODULE_REG,
			     module);
	} else {
		ctrl &= ~(SYSMGR_EMACGRP_CTRL_PTP_REF_CLK_MASK << (reg_shift / 2));
	}

	FUNC2(sys_mgr_base_addr, reg_offset, ctrl);

	/* Deassert reset for the phy configuration to be sampled by
	 * the enet controller, and operation to start in requested mode
	 */
	FUNC4(dwmac->stmmac_ocp_rst);
	FUNC4(dwmac->stmmac_rst);
	if (phymode == PHY_INTERFACE_MODE_SGMII) {
		if (FUNC7(dwmac->pcs.tse_pcs_base, &dwmac->pcs) != 0) {
			FUNC0(dwmac->dev, "Unable to initialize TSE PCS");
			return -EINVAL;
		}
	}

	return 0;
}