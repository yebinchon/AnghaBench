#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct isp_pipeline {int external_rate; int external_width; int /*<<< orphan*/  external; } ;
struct TYPE_10__ {int pol; int pos; } ;
struct isp_csiphy_lanes_cfg {TYPE_5__ clk; TYPE_4__* data; } ;
struct isp_csiphy {unsigned int num_data_lanes; int /*<<< orphan*/  cfg_regs; int /*<<< orphan*/  isp; int /*<<< orphan*/  phy_regs; int /*<<< orphan*/  entity; } ;
struct TYPE_7__ {int /*<<< orphan*/  phy_layer; struct isp_csiphy_lanes_cfg lanecfg; } ;
struct TYPE_6__ {unsigned int num_data_lanes; struct isp_csiphy_lanes_cfg lanecfg; } ;
struct TYPE_8__ {TYPE_2__ ccp2; TYPE_1__ csi2; } ;
struct isp_bus_cfg {scalar_t__ interface; TYPE_3__ bus; } ;
struct TYPE_9__ {int pol; int pos; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ISPCSI2_PHY_CFG ; 
 int ISPCSI2_PHY_CFG_CLOCK_POL_MASK ; 
 int ISPCSI2_PHY_CFG_CLOCK_POL_SHIFT ; 
 int ISPCSI2_PHY_CFG_CLOCK_POSITION_MASK ; 
 int ISPCSI2_PHY_CFG_CLOCK_POSITION_SHIFT ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  ISPCSIPHY_REG0 ; 
 int ISPCSIPHY_REG0_THS_SETTLE_MASK ; 
 int ISPCSIPHY_REG0_THS_SETTLE_SHIFT ; 
 int ISPCSIPHY_REG0_THS_TERM_MASK ; 
 int ISPCSIPHY_REG0_THS_TERM_SHIFT ; 
 int /*<<< orphan*/  ISPCSIPHY_REG1 ; 
 int ISPCSIPHY_REG1_TCLK_MISS_MASK ; 
 int ISPCSIPHY_REG1_TCLK_MISS_SHIFT ; 
 int ISPCSIPHY_REG1_TCLK_SETTLE_MASK ; 
 int ISPCSIPHY_REG1_TCLK_SETTLE_SHIFT ; 
 int ISPCSIPHY_REG1_TCLK_TERM_MASK ; 
 int ISPCSIPHY_REG1_TCLK_TERM_SHIFT ; 
 scalar_t__ ISP_INTERFACE_CCP2B_PHY1 ; 
 scalar_t__ ISP_INTERFACE_CCP2B_PHY2 ; 
 int TCLK_MISS ; 
 int TCLK_SETTLE ; 
 int TCLK_TERM ; 
 int /*<<< orphan*/  FUNC5 (struct isp_csiphy*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_pipeline* FUNC9 (int /*<<< orphan*/ ) ; 
 struct isp_bus_cfg* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct isp_csiphy *phy)
{
	struct isp_pipeline *pipe = FUNC9(phy->entity);
	struct isp_bus_cfg *buscfg = FUNC10(pipe->external);
	struct isp_csiphy_lanes_cfg *lanes;
	int csi2_ddrclk_khz;
	unsigned int num_data_lanes, used_lanes = 0;
	unsigned int i;
	u32 reg;

	if (buscfg->interface == ISP_INTERFACE_CCP2B_PHY1
	    || buscfg->interface == ISP_INTERFACE_CCP2B_PHY2) {
		lanes = &buscfg->bus.ccp2.lanecfg;
		num_data_lanes = 1;
	} else {
		lanes = &buscfg->bus.csi2.lanecfg;
		num_data_lanes = buscfg->bus.csi2.num_data_lanes;
	}

	if (num_data_lanes > phy->num_data_lanes)
		return -EINVAL;

	/* Clock and data lanes verification */
	for (i = 0; i < num_data_lanes; i++) {
		if (lanes->data[i].pol > 1 || lanes->data[i].pos > 3)
			return -EINVAL;

		if (used_lanes & (1 << lanes->data[i].pos))
			return -EINVAL;

		used_lanes |= 1 << lanes->data[i].pos;
	}

	if (lanes->clk.pol > 1 || lanes->clk.pos > 3)
		return -EINVAL;

	if (lanes->clk.pos == 0 || used_lanes & (1 << lanes->clk.pos))
		return -EINVAL;

	/*
	 * The PHY configuration is lost in off mode, that's not an
	 * issue since the MPU power domain is forced on whilst the
	 * ISP is in use.
	 */
	FUNC5(phy, buscfg->interface, true,
			   buscfg->bus.ccp2.phy_layer);

	/* DPHY timing configuration */
	/* CSI-2 is DDR and we only count used lanes. */
	csi2_ddrclk_khz = pipe->external_rate / 1000
		/ (2 * FUNC6(used_lanes)) * pipe->external_width;

	reg = FUNC7(phy->isp, phy->phy_regs, ISPCSIPHY_REG0);

	reg &= ~(ISPCSIPHY_REG0_THS_TERM_MASK |
		 ISPCSIPHY_REG0_THS_SETTLE_MASK);
	/* THS_TERM: Programmed value = ceil(12.5 ns/DDRClk period) - 1. */
	reg |= (FUNC0(25 * csi2_ddrclk_khz, 2000000) - 1)
		<< ISPCSIPHY_REG0_THS_TERM_SHIFT;
	/* THS_SETTLE: Programmed value = ceil(90 ns/DDRClk period) + 3. */
	reg |= (FUNC0(90 * csi2_ddrclk_khz, 1000000) + 3)
		<< ISPCSIPHY_REG0_THS_SETTLE_SHIFT;

	FUNC8(phy->isp, reg, phy->phy_regs, ISPCSIPHY_REG0);

	reg = FUNC7(phy->isp, phy->phy_regs, ISPCSIPHY_REG1);

	reg &= ~(ISPCSIPHY_REG1_TCLK_TERM_MASK |
		 ISPCSIPHY_REG1_TCLK_MISS_MASK |
		 ISPCSIPHY_REG1_TCLK_SETTLE_MASK);
	reg |= TCLK_TERM << ISPCSIPHY_REG1_TCLK_TERM_SHIFT;
	reg |= TCLK_MISS << ISPCSIPHY_REG1_TCLK_MISS_SHIFT;
	reg |= TCLK_SETTLE << ISPCSIPHY_REG1_TCLK_SETTLE_SHIFT;

	FUNC8(phy->isp, reg, phy->phy_regs, ISPCSIPHY_REG1);

	/* DPHY lane configuration */
	reg = FUNC7(phy->isp, phy->cfg_regs, ISPCSI2_PHY_CFG);

	for (i = 0; i < num_data_lanes; i++) {
		reg &= ~(FUNC1(i + 1) |
			 FUNC3(i + 1));
		reg |= (lanes->data[i].pol <<
			FUNC2(i + 1));
		reg |= (lanes->data[i].pos <<
			FUNC4(i + 1));
	}

	reg &= ~(ISPCSI2_PHY_CFG_CLOCK_POL_MASK |
		 ISPCSI2_PHY_CFG_CLOCK_POSITION_MASK);
	reg |= lanes->clk.pol << ISPCSI2_PHY_CFG_CLOCK_POL_SHIFT;
	reg |= lanes->clk.pos << ISPCSI2_PHY_CFG_CLOCK_POSITION_SHIFT;

	FUNC8(phy->isp, reg, phy->cfg_regs, ISPCSI2_PHY_CFG);

	return 0;
}