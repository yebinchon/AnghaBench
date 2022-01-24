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
struct sti_dwmac {struct regmap* clk; int /*<<< orphan*/  speed; int /*<<< orphan*/  tx_retime_src; int /*<<< orphan*/  interface; void* ext_phyclk; void* gmac_en; struct regmap* regmap; int /*<<< orphan*/  ctrl_reg; int /*<<< orphan*/  clk_sel_reg; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  TX_RETIME_SRC_CLKGEN ; 
 int /*<<< orphan*/  TX_RETIME_SRC_CLK_125 ; 
 int /*<<< orphan*/  TX_RETIME_SRC_NA ; 
 int /*<<< orphan*/  TX_RETIME_SRC_TXCLK ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct regmap* FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 void* FUNC7 (struct device_node*,char*) ; 
 int FUNC8 (struct device_node*,char*,char const**) ; 
 int FUNC9 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 struct regmap* FUNC12 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC13(struct sti_dwmac *dwmac,
				struct platform_device *pdev)
{
	struct resource *res;
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct regmap *regmap;
	int err;

	/* clk selection from extra syscfg register */
	dwmac->clk_sel_reg = -ENXIO;
	res = FUNC10(pdev, IORESOURCE_MEM, "sti-clkconf");
	if (res)
		dwmac->clk_sel_reg = res->start;

	regmap = FUNC12(np, "st,syscon");
	if (FUNC0(regmap))
		return FUNC2(regmap);

	err = FUNC9(np, "st,syscon", 1, &dwmac->ctrl_reg);
	if (err) {
		FUNC3(dev, "Can't get sysconfig ctrl offset (%d)\n", err);
		return err;
	}

	dwmac->interface = FUNC6(np);
	dwmac->regmap = regmap;
	dwmac->gmac_en = FUNC7(np, "st,gmac_en");
	dwmac->ext_phyclk = FUNC7(np, "st,ext-phyclk");
	dwmac->tx_retime_src = TX_RETIME_SRC_NA;
	dwmac->speed = SPEED_100;

	if (FUNC1(dwmac->interface)) {
		const char *rs;

		dwmac->tx_retime_src = TX_RETIME_SRC_CLKGEN;

		err = FUNC8(np, "st,tx-retime-src", &rs);
		if (err < 0) {
			FUNC4(dev, "Use internal clock source\n");
		} else {
			if (!FUNC11(rs, "clk_125"))
				dwmac->tx_retime_src = TX_RETIME_SRC_CLK_125;
			else if (!FUNC11(rs, "txclk"))
				dwmac->tx_retime_src = TX_RETIME_SRC_TXCLK;
		}
		dwmac->speed = SPEED_1000;
	}

	dwmac->clk = FUNC5(dev, "sti-ethclk");
	if (FUNC0(dwmac->clk)) {
		FUNC4(dev, "No phy clock provided...\n");
		dwmac->clk = NULL;
	}

	return 0;
}