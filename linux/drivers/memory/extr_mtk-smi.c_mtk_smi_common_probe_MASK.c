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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtk_smi {void* base; void* clk_async; void* smi_ao_base; TYPE_1__* plat; void* clk_gals1; void* clk_gals0; void* clk_smi; void* clk_apb; struct device* dev; } ;
struct TYPE_2__ {scalar_t__ gen; scalar_t__ has_gals; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ MTK_SMI_GEN1 ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,struct resource*) ; 
 struct mtk_smi* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct device*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct mtk_smi*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_smi *common;
	struct resource *res;
	int ret;

	common = FUNC5(dev, sizeof(*common), GFP_KERNEL);
	if (!common)
		return -ENOMEM;
	common->dev = dev;
	common->plat = FUNC6(dev);

	common->clk_apb = FUNC3(dev, "apb");
	if (FUNC0(common->clk_apb))
		return FUNC1(common->clk_apb);

	common->clk_smi = FUNC3(dev, "smi");
	if (FUNC0(common->clk_smi))
		return FUNC1(common->clk_smi);

	if (common->plat->has_gals) {
		common->clk_gals0 = FUNC3(dev, "gals0");
		if (FUNC0(common->clk_gals0))
			return FUNC1(common->clk_gals0);

		common->clk_gals1 = FUNC3(dev, "gals1");
		if (FUNC0(common->clk_gals1))
			return FUNC1(common->clk_gals1);
	}

	/*
	 * for mtk smi gen 1, we need to get the ao(always on) base to config
	 * m4u port, and we need to enable the aync clock for transform the smi
	 * clock into emi clock domain, but for mtk smi gen2, there's no smi ao
	 * base.
	 */
	if (common->plat->gen == MTK_SMI_GEN1) {
		res = FUNC7(pdev, IORESOURCE_MEM, 0);
		common->smi_ao_base = FUNC4(dev, res);
		if (FUNC0(common->smi_ao_base))
			return FUNC1(common->smi_ao_base);

		common->clk_async = FUNC3(dev, "async");
		if (FUNC0(common->clk_async))
			return FUNC1(common->clk_async);

		ret = FUNC2(common->clk_async);
		if (ret)
			return ret;
	} else {
		res = FUNC7(pdev, IORESOURCE_MEM, 0);
		common->base = FUNC4(dev, res);
		if (FUNC0(common->base))
			return FUNC1(common->base);
	}
	FUNC9(dev);
	FUNC8(pdev, common);
	return 0;
}