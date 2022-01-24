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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct platform_device* pdev; } ;
struct fimc_is {int /*<<< orphan*/  pmu_regs; int /*<<< orphan*/  irq; int /*<<< orphan*/  regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  slock; int /*<<< orphan*/  irq_queue; TYPE_1__ isp; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FIMC_IS_FW_FILENAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 struct fimc_is* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*) ; 
 int FUNC9 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC10 (struct fimc_is*) ; 
 int FUNC11 (struct fimc_is*) ; 
 int /*<<< orphan*/  fimc_is_irq_handler ; 
 int /*<<< orphan*/  FUNC12 (struct fimc_is*) ; 
 int FUNC13 (struct fimc_is*) ; 
 int FUNC14 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 struct device_node* FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC27 (struct platform_device*,struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*) ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 int FUNC30 (struct device*) ; 
 int /*<<< orphan*/  FUNC31 (struct device*) ; 
 int FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC35(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct fimc_is *is;
	struct resource res;
	struct device_node *node;
	int ret;

	is = FUNC7(&pdev->dev, sizeof(*is), GFP_KERNEL);
	if (!is)
		return -ENOMEM;

	is->pdev = pdev;
	is->isp.pdev = pdev;

	FUNC19(&is->irq_queue);
	FUNC33(&is->slock);
	FUNC22(&is->lock);

	ret = FUNC23(dev->of_node, 0, &res);
	if (ret < 0)
		return ret;

	is->regs = FUNC6(dev, &res);
	if (FUNC1(is->regs))
		return FUNC2(is->regs);

	node = FUNC24(dev->of_node, "pmu");
	if (!node)
		return -ENODEV;

	is->pmu_regs = FUNC25(node, 0);
	FUNC26(node);
	if (!is->pmu_regs)
		return -ENOMEM;

	is->irq = FUNC21(dev->of_node, 0);
	if (!is->irq) {
		FUNC4(dev, "no irq found\n");
		ret = -EINVAL;
		goto err_iounmap;
	}

	ret = FUNC11(is);
	if (ret < 0)
		goto err_iounmap;

	FUNC27(pdev, is);

	ret = FUNC32(is->irq, fimc_is_irq_handler, 0, FUNC5(dev), is);
	if (ret < 0) {
		FUNC4(dev, "irq request failed\n");
		goto err_clk;
	}
	FUNC28(dev);

	if (!FUNC29(dev)) {
		ret = FUNC15(dev);
		if (ret < 0)
			goto err_irq;
	}

	ret = FUNC30(dev);
	if (ret < 0)
		goto err_pm;

	FUNC34(dev, FUNC0(32));

	ret = FUNC8(dev);
	if (ret < 0)
		goto err_pm;

	/*
	 * Register FIMC-IS V4L2 subdevs to this driver. The video nodes
	 * will be created within the subdev's registered() callback.
	 */
	ret = FUNC13(is);
	if (ret < 0)
		goto err_pm;

	ret = FUNC9(is);
	if (ret < 0)
		goto err_sd;

	ret = FUNC14(is, FIMC_IS_FW_FILENAME);
	if (ret < 0)
		goto err_dfs;

	FUNC31(dev);

	FUNC3(dev, "FIMC-IS registered successfully\n");
	return 0;

err_dfs:
	FUNC10(is);
err_sd:
	FUNC17(is);
err_pm:
	if (!FUNC29(dev))
		FUNC16(dev);
err_irq:
	FUNC18(is->irq, is);
err_clk:
	FUNC12(is);
err_iounmap:
	FUNC20(is->pmu_regs);
	return ret;
}