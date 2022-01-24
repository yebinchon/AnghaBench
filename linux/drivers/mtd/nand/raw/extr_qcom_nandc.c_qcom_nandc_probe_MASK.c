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
struct resource {int /*<<< orphan*/  start; } ;
struct qcom_nand_controller {void* core_clk; void* aon_clk; int /*<<< orphan*/  base_dma; int /*<<< orphan*/  base_phys; void* base; void const* props; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*) ; 
 void* FUNC6 (struct device*,struct resource*) ; 
 struct qcom_nand_controller* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct device*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct qcom_nand_controller*) ; 
 int FUNC13 (struct qcom_nand_controller*) ; 
 int FUNC14 (struct platform_device*) ; 
 int FUNC15 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC16 (struct qcom_nand_controller*) ; 
 int FUNC17 (struct qcom_nand_controller*) ; 
 int /*<<< orphan*/  FUNC18 (struct resource*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct qcom_nand_controller *nandc;
	const void *dev_data;
	struct device *dev = &pdev->dev;
	struct resource *res;
	int ret;

	nandc = FUNC7(&pdev->dev, sizeof(*nandc), GFP_KERNEL);
	if (!nandc)
		return -ENOMEM;

	FUNC12(pdev, nandc);
	nandc->dev = dev;

	dev_data = FUNC10(dev);
	if (!dev_data) {
		FUNC4(&pdev->dev, "failed to get device data\n");
		return -ENODEV;
	}

	nandc->props = dev_data;

	nandc->core_clk = FUNC5(dev, "core");
	if (FUNC0(nandc->core_clk))
		return FUNC1(nandc->core_clk);

	nandc->aon_clk = FUNC5(dev, "aon");
	if (FUNC0(nandc->aon_clk))
		return FUNC1(nandc->aon_clk);

	ret = FUNC14(pdev);
	if (ret)
		return ret;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	nandc->base = FUNC6(dev, res);
	if (FUNC0(nandc->base))
		return FUNC1(nandc->base);

	nandc->base_phys = res->start;
	nandc->base_dma = FUNC8(dev, res->start,
					   FUNC18(res),
					   DMA_BIDIRECTIONAL, 0);
	if (!nandc->base_dma)
		return -ENXIO;

	ret = FUNC13(nandc);
	if (ret)
		goto err_nandc_alloc;

	ret = FUNC3(nandc->core_clk);
	if (ret)
		goto err_core_clk;

	ret = FUNC3(nandc->aon_clk);
	if (ret)
		goto err_aon_clk;

	ret = FUNC15(nandc);
	if (ret)
		goto err_setup;

	ret = FUNC17(nandc);
	if (ret)
		goto err_setup;

	return 0;

err_setup:
	FUNC2(nandc->aon_clk);
err_aon_clk:
	FUNC2(nandc->core_clk);
err_core_clk:
	FUNC16(nandc);
err_nandc_alloc:
	FUNC9(dev, res->start, FUNC18(res),
			   DMA_BIDIRECTIONAL, 0);

	return ret;
}