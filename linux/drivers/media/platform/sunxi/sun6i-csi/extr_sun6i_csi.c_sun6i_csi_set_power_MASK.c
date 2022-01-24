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
struct sun6i_csi_dev {int /*<<< orphan*/  clk_mod; int /*<<< orphan*/  clk_ram; struct device* dev; int /*<<< orphan*/  rstc_bus; struct regmap* regmap; } ;
struct sun6i_csi {int dummy; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_EN_CSI_EN ; 
 int /*<<< orphan*/  CSI_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct sun6i_csi_dev* FUNC9 (struct sun6i_csi*) ; 

int FUNC10(struct sun6i_csi *csi, bool enable)
{
	struct sun6i_csi_dev *sdev = FUNC9(csi);
	struct device *dev = sdev->dev;
	struct regmap *regmap = sdev->regmap;
	int ret;

	if (!enable) {
		FUNC6(regmap, CSI_EN_REG, CSI_EN_CSI_EN, 0);

		FUNC0(sdev->clk_ram);
		if (FUNC5(dev->of_node,
					    "allwinner,sun50i-a64-csi"))
			FUNC2(sdev->clk_mod);
		FUNC0(sdev->clk_mod);
		FUNC7(sdev->rstc_bus);
		return 0;
	}

	ret = FUNC1(sdev->clk_mod);
	if (ret) {
		FUNC4(sdev->dev, "Enable csi clk err %d\n", ret);
		return ret;
	}

	if (FUNC5(dev->of_node, "allwinner,sun50i-a64-csi"))
		FUNC3(sdev->clk_mod, 300000000);

	ret = FUNC1(sdev->clk_ram);
	if (ret) {
		FUNC4(sdev->dev, "Enable clk_dram_csi clk err %d\n", ret);
		goto clk_mod_disable;
	}

	ret = FUNC8(sdev->rstc_bus);
	if (ret) {
		FUNC4(sdev->dev, "reset err %d\n", ret);
		goto clk_ram_disable;
	}

	FUNC6(regmap, CSI_EN_REG, CSI_EN_CSI_EN, CSI_EN_CSI_EN);

	return 0;

clk_ram_disable:
	FUNC0(sdev->clk_ram);
clk_mod_disable:
	if (FUNC5(dev->of_node, "allwinner,sun50i-a64-csi"))
		FUNC2(sdev->clk_mod);
	FUNC0(sdev->clk_mod);
	return ret;
}