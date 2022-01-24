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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct atmel_hlcdc_regmap {void* regs; } ;
struct atmel_hlcdc {scalar_t__ irq; void* regmap; void* slow_clk; void* sys_clk; void* periph_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  atmel_hlcdc_cells ; 
 int /*<<< orphan*/  atmel_hlcdc_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct atmel_hlcdc*) ; 
 void* FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 void* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct device*,int /*<<< orphan*/ *,struct atmel_hlcdc_regmap*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct atmel_hlcdc_regmap *hregmap;
	struct device *dev = &pdev->dev;
	struct atmel_hlcdc *hlcdc;
	struct resource *res;

	hregmap = FUNC7(dev, sizeof(*hregmap), GFP_KERNEL);
	if (!hregmap)
		return -ENOMEM;

	hlcdc = FUNC7(dev, sizeof(*hlcdc), GFP_KERNEL);
	if (!hlcdc)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	hregmap->regs = FUNC6(dev, res);
	if (FUNC1(hregmap->regs))
		return FUNC2(hregmap->regs);

	hlcdc->irq = FUNC10(pdev, 0);
	if (hlcdc->irq < 0)
		return hlcdc->irq;

	hlcdc->periph_clk = FUNC5(dev, "periph_clk");
	if (FUNC1(hlcdc->periph_clk)) {
		FUNC3(dev, "failed to get peripheral clock\n");
		return FUNC2(hlcdc->periph_clk);
	}

	hlcdc->sys_clk = FUNC5(dev, "sys_clk");
	if (FUNC1(hlcdc->sys_clk)) {
		FUNC3(dev, "failed to get system clock\n");
		return FUNC2(hlcdc->sys_clk);
	}

	hlcdc->slow_clk = FUNC5(dev, "slow_clk");
	if (FUNC1(hlcdc->slow_clk)) {
		FUNC3(dev, "failed to get slow clock\n");
		return FUNC2(hlcdc->slow_clk);
	}

	hlcdc->regmap = FUNC9(dev, NULL, hregmap,
					 &atmel_hlcdc_regmap_config);
	if (FUNC1(hlcdc->regmap))
		return FUNC2(hlcdc->regmap);

	FUNC4(dev, hlcdc);

	return FUNC8(dev, -1, atmel_hlcdc_cells,
				    FUNC0(atmel_hlcdc_cells),
				    NULL, 0, NULL);
}