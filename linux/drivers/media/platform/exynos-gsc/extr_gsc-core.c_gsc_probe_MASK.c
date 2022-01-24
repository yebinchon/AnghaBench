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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct gsc_driverdata {int num_entities; int num_clocks; int* clk_names; int /*<<< orphan*/ * variant; } ;
struct gsc_dev {int id; int num_clocks; int /*<<< orphan*/ * clock; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  slock; int /*<<< orphan*/  irq_queue; struct platform_device* pdev; int /*<<< orphan*/  variant; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC5 (struct device*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct resource*) ; 
 struct gsc_dev* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gsc_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct gsc_dev*) ; 
 int /*<<< orphan*/  gsc_irq_handler ; 
 int FUNC13 (struct gsc_dev*) ; 
 struct gsc_driverdata const gsc_v_100_drvdata ; 
 int /*<<< orphan*/  FUNC14 (struct gsc_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*) ; 
 struct gsc_driverdata* FUNC18 (struct device*) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct gsc_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct gsc_dev *gsc;
	struct resource *res;
	struct device *dev = &pdev->dev;
	const struct gsc_driverdata *drv_data = FUNC18(dev);
	int ret;
	int i;

	gsc = FUNC10(dev, sizeof(struct gsc_dev), GFP_KERNEL);
	if (!gsc)
		return -ENOMEM;

	ret = FUNC17(pdev->dev.of_node, "gsc");
	if (ret < 0)
		return ret;

	if (drv_data == &gsc_v_100_drvdata)
		FUNC7(dev, "compatible 'exynos5-gsc' is deprecated\n");

	gsc->id = ret;
	if (gsc->id >= drv_data->num_entities) {
		FUNC6(dev, "Invalid platform device id: %d\n", gsc->id);
		return -EINVAL;
	}

	gsc->num_clocks = drv_data->num_clocks;
	gsc->variant = drv_data->variant[gsc->id];
	gsc->pdev = pdev;

	FUNC15(&gsc->irq_queue);
	FUNC23(&gsc->slock);
	FUNC16(&gsc->lock);

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	gsc->regs = FUNC9(dev, res);
	if (FUNC1(gsc->regs))
		return FUNC2(gsc->regs);

	res = FUNC19(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC6(dev, "failed to get IRQ resource\n");
		return -ENXIO;
	}

	for (i = 0; i < gsc->num_clocks; i++) {
		gsc->clock[i] = FUNC8(dev, drv_data->clk_names[i]);
		if (FUNC1(gsc->clock[i])) {
			FUNC6(dev, "failed to get clock: %s\n",
				drv_data->clk_names[i]);
			return FUNC2(gsc->clock[i]);
		}
	}

	for (i = 0; i < gsc->num_clocks; i++) {
		ret = FUNC4(gsc->clock[i]);
		if (ret) {
			FUNC6(dev, "clock prepare failed for clock: %s\n",
				drv_data->clk_names[i]);
			while (--i >= 0)
				FUNC3(gsc->clock[i]);
			return ret;
		}
	}

	ret = FUNC11(dev, res->start, gsc_irq_handler,
				0, pdev->name, gsc);
	if (ret) {
		FUNC6(dev, "failed to install irq (%d)\n", ret);
		goto err_clk;
	}

	ret = FUNC24(dev, &gsc->v4l2_dev);
	if (ret)
		goto err_clk;

	ret = FUNC13(gsc);
	if (ret)
		goto err_v4l2;

	FUNC20(pdev, gsc);

	FUNC12(gsc);
	FUNC14(gsc);

	FUNC26(dev, FUNC0(32));

	FUNC5(dev, "gsc-%d registered successfully\n", gsc->id);

	FUNC22(dev);
	FUNC21(dev);

	return 0;

err_v4l2:
	FUNC25(&gsc->v4l2_dev);
err_clk:
	for (i = gsc->num_clocks - 1; i >= 0; i--)
		FUNC3(gsc->clock[i]);
	return ret;
}