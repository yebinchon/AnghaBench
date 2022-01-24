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
typedef  scalar_t__ u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {int id; struct device dev; } ;
struct fimc_dev {int id; int /*<<< orphan*/ * clock; TYPE_1__* drv_data; int /*<<< orphan*/  regs; int /*<<< orphan*/  sysreg; int /*<<< orphan*/  lock; int /*<<< orphan*/  slock; int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  variant; struct platform_device* pdev; } ;
struct TYPE_2__ {int num_entities; scalar_t__ lclk_frequency; int /*<<< orphan*/ * variant; } ;

/* Variables and functions */
 size_t CLK_BUS ; 
 size_t CLK_GATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct resource*) ; 
 struct fimc_dev* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fimc_dev*) ; 
 int FUNC12 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct fimc_dev*) ; 
 TYPE_1__* FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int FUNC16 (struct fimc_dev*) ; 
 int /*<<< orphan*/  fimc_irq_handler ; 
 int FUNC17 (struct fimc_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	u32 lclk_freq = 0;
	struct fimc_dev *fimc;
	struct resource *res;
	int ret = 0;

	fimc = FUNC10(dev, sizeof(*fimc), GFP_KERNEL);
	if (!fimc)
		return -ENOMEM;

	fimc->pdev = pdev;

	if (dev->of_node) {
		ret = FUNC17(fimc, &lclk_freq);
		if (ret < 0)
			return ret;
	} else {
		fimc->drv_data = FUNC14(pdev);
		fimc->id = pdev->id;
	}
	if (!fimc->drv_data || fimc->id >= fimc->drv_data->num_entities ||
	    fimc->id < 0) {
		FUNC7(dev, "Invalid driver data or device id (%d)\n",
			fimc->id);
		return -EINVAL;
	}
	if (!dev->of_node)
		fimc->variant = fimc->drv_data->variant[fimc->id];

	FUNC19(&fimc->irq_queue);
	FUNC25(&fimc->slock);
	FUNC20(&fimc->lock);

	fimc->sysreg = FUNC15(dev->of_node);
	if (FUNC1(fimc->sysreg))
		return FUNC2(fimc->sysreg);

	res = FUNC21(pdev, IORESOURCE_MEM, 0);
	fimc->regs = FUNC9(dev, res);
	if (FUNC1(fimc->regs))
		return FUNC2(fimc->regs);

	res = FUNC21(pdev, IORESOURCE_IRQ, 0);
	if (res == NULL) {
		FUNC7(dev, "Failed to get IRQ resource\n");
		return -ENXIO;
	}

	ret = FUNC12(fimc);
	if (ret)
		return ret;

	if (lclk_freq == 0)
		lclk_freq = fimc->drv_data->lclk_frequency;

	ret = FUNC5(fimc->clock[CLK_BUS], lclk_freq);
	if (ret < 0)
		return ret;

	ret = FUNC4(fimc->clock[CLK_BUS]);
	if (ret < 0)
		return ret;

	ret = FUNC11(dev, res->start, fimc_irq_handler,
			       0, FUNC8(dev), fimc);
	if (ret < 0) {
		FUNC7(dev, "failed to install irq (%d)\n", ret);
		goto err_sclk;
	}

	ret = FUNC16(fimc);
	if (ret < 0)
		goto err_sclk;

	FUNC22(pdev, fimc);
	FUNC23(dev);

	if (!FUNC24(dev)) {
		ret = FUNC4(fimc->clock[CLK_GATE]);
		if (ret < 0)
			goto err_sd;
	}

	FUNC26(dev, FUNC0(32));

	FUNC6(dev, "FIMC.%d registered successfully\n", fimc->id);
	return 0;

err_sd:
	FUNC18(fimc);
err_sclk:
	FUNC3(fimc->clock[CLK_BUS]);
	FUNC13(fimc);
	return ret;
}