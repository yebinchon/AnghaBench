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
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct flite_drvdata {scalar_t__ num_instances; } ;
struct fimc_lite {scalar_t__ index; int /*<<< orphan*/  clock; int /*<<< orphan*/  regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  slock; int /*<<< orphan*/  irq_queue; struct platform_device* pdev; struct flite_drvdata* dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 struct fimc_lite* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fimc_lite*) ; 
 int FUNC10 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC11 (struct fimc_lite*) ; 
 int FUNC12 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC13 (struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC14 (struct fimc_lite*) ; 
 int /*<<< orphan*/  flite_irq_handler ; 
 int /*<<< orphan*/  flite_of_match ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int,char*) ; 
 struct of_device_id* FUNC18 (int /*<<< orphan*/ ,int) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct fimc_lite*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct flite_drvdata *drv_data = NULL;
	struct device *dev = &pdev->dev;
	const struct of_device_id *of_id;
	struct fimc_lite *fimc;
	struct resource *res;
	int ret;

	if (!dev->of_node)
		return -ENODEV;

	fimc = FUNC8(dev, sizeof(*fimc), GFP_KERNEL);
	if (!fimc)
		return -ENOMEM;

	of_id = FUNC18(flite_of_match, dev->of_node);
	if (of_id)
		drv_data = (struct flite_drvdata *)of_id->data;
	fimc->index = FUNC17(dev->of_node, "fimc-lite");

	if (!drv_data || fimc->index >= drv_data->num_instances ||
						fimc->index < 0) {
		FUNC5(dev, "Wrong %pOF node alias\n", dev->of_node);
		return -EINVAL;
	}

	fimc->dd = drv_data;
	fimc->pdev = pdev;

	FUNC15(&fimc->irq_queue);
	FUNC23(&fimc->slock);
	FUNC16(&fimc->lock);

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	fimc->regs = FUNC7(dev, res);
	if (FUNC1(fimc->regs))
		return FUNC2(fimc->regs);

	res = FUNC19(pdev, IORESOURCE_IRQ, 0);
	if (res == NULL) {
		FUNC5(dev, "Failed to get IRQ resource\n");
		return -ENXIO;
	}

	ret = FUNC10(fimc);
	if (ret)
		return ret;

	ret = FUNC9(dev, res->start, flite_irq_handler,
			       0, FUNC6(dev), fimc);
	if (ret) {
		FUNC5(dev, "Failed to install irq (%d)\n", ret);
		goto err_clk_put;
	}

	/* The video node will be created within the subdev's registered() op */
	ret = FUNC12(fimc);
	if (ret)
		goto err_clk_put;

	FUNC20(pdev, fimc);
	FUNC21(dev);

	if (!FUNC22(dev)) {
		ret = FUNC3(fimc->clock);
		if (ret < 0)
			goto err_sd;
	}

	FUNC24(dev, FUNC0(32));

	FUNC13(fimc);

	FUNC4(dev, "FIMC-LITE.%d registered successfully\n",
		fimc->index);
	return 0;

err_sd:
	FUNC14(fimc);
err_clk_put:
	FUNC11(fimc);
	return ret;
}