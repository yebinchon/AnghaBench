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
typedef  int u32 ;
struct isp_device {int /*<<< orphan*/  dev; } ;
struct isp_ccp2_device {int dummy; } ;
struct isp_ccp2_cfg {scalar_t__ phy_layer; scalar_t__ ccp2_mode; scalar_t__ strobe_clk_pol; scalar_t__ vp_clk_pol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int EIO ; 
 int /*<<< orphan*/  ISPCCP2_CTRL ; 
 int /*<<< orphan*/  ISPCCP2_CTRL_INV_MASK ; 
 int /*<<< orphan*/  ISPCCP2_CTRL_INV_SHIFT ; 
 int /*<<< orphan*/  ISPCCP2_CTRL_IO_OUT_SEL_MASK ; 
 int /*<<< orphan*/  ISPCCP2_CTRL_IO_OUT_SEL_SHIFT ; 
 int ISPCCP2_CTRL_MODE ; 
 int /*<<< orphan*/  ISPCCP2_CTRL_PHY_SEL_MASK ; 
 int /*<<< orphan*/  ISPCCP2_CTRL_PHY_SEL_SHIFT ; 
 int /*<<< orphan*/  ISPCCP2_CTRL_VP_CLK_POL_MASK ; 
 int /*<<< orphan*/  ISPCCP2_CTRL_VP_CLK_POL_SHIFT ; 
 scalar_t__ ISP_CCP2_MODE_CCP2 ; 
 scalar_t__ ISP_CCP2_PHY_DATA_STROBE ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_CCP2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp_device* FUNC4 (struct isp_ccp2_device*) ; 

__attribute__((used)) static int FUNC5(struct isp_ccp2_device *ccp2,
			     const struct isp_ccp2_cfg *buscfg)
{
	struct isp_device *isp = FUNC4(ccp2);
	u32 val;

	val = FUNC2(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_CTRL) |
			    ISPCCP2_CTRL_MODE;
	/* Data/strobe physical layer */
	FUNC0(val, ISPCCP2_CTRL_PHY_SEL_SHIFT, ISPCCP2_CTRL_PHY_SEL_MASK,
		buscfg->phy_layer);
	FUNC0(val, ISPCCP2_CTRL_IO_OUT_SEL_SHIFT,
		ISPCCP2_CTRL_IO_OUT_SEL_MASK, buscfg->ccp2_mode);
	FUNC0(val, ISPCCP2_CTRL_INV_SHIFT, ISPCCP2_CTRL_INV_MASK,
		buscfg->strobe_clk_pol);
	FUNC0(val, ISPCCP2_CTRL_VP_CLK_POL_SHIFT,
		ISPCCP2_CTRL_VP_CLK_POL_MASK, buscfg->vp_clk_pol);
	FUNC3(isp, val, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_CTRL);

	val = FUNC2(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_CTRL);
	if (!(val & ISPCCP2_CTRL_MODE)) {
		if (buscfg->ccp2_mode == ISP_CCP2_MODE_CCP2)
			FUNC1(isp->dev, "OMAP3 CCP2 bus not available\n");
		if (buscfg->phy_layer == ISP_CCP2_PHY_DATA_STROBE)
			/* Strobe mode requires CCP2 */
			return -EIO;
	}

	return 0;
}