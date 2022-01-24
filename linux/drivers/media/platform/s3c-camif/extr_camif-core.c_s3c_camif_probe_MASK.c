#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  clock_frequency; } ;
struct s3c_camif_plat_data {int (* gpio_get ) () ;int /*<<< orphan*/  (* gpio_put ) () ;TYPE_1__ sensor; } ;
struct s3c_camif_drvdata {int /*<<< orphan*/  variant; } ;
struct resource {int dummy; } ;
struct device {struct s3c_camif_plat_data* platform_data; } ;
struct platform_device {struct device dev; } ;
struct camif_dev {int /*<<< orphan*/  media_dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  subdev; int /*<<< orphan*/ * clock; struct s3c_camif_plat_data pdata; int /*<<< orphan*/  io_base; int /*<<< orphan*/  variant; struct device* dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  slock; } ;
struct TYPE_4__ {scalar_t__ driver_data; } ;

/* Variables and functions */
 size_t CLK_CAM ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct camif_dev*) ; 
 int FUNC4 (struct camif_dev*) ; 
 int FUNC5 (struct camif_dev*) ; 
 int FUNC6 (struct camif_dev*) ; 
 int FUNC7 (struct camif_dev*) ; 
 int FUNC8 (struct platform_device*,struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,struct resource*) ; 
 struct camif_dev* FUNC15 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC20 (struct platform_device*) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int FUNC27 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC28 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC29 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC36(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct s3c_camif_plat_data *pdata = dev->platform_data;
	struct s3c_camif_drvdata *drvdata;
	struct camif_dev *camif;
	struct resource *mres;
	int ret = 0;

	camif = FUNC15(dev, sizeof(*camif), GFP_KERNEL);
	if (!camif)
		return -ENOMEM;

	FUNC30(&camif->slock);
	FUNC19(&camif->lock);

	camif->dev = dev;

	if (!pdata || !pdata->gpio_get || !pdata->gpio_put) {
		FUNC12(dev, "wrong platform data\n");
		return -EINVAL;
	}

	camif->pdata = *pdata;
	drvdata = (void *)FUNC20(pdev)->driver_data;
	camif->variant = drvdata->variant;

	mres = FUNC21(pdev, IORESOURCE_MEM, 0);

	camif->io_base = FUNC14(dev, mres);
	if (FUNC0(camif->io_base))
		return FUNC1(camif->io_base);

	ret = FUNC8(pdev, camif);
	if (ret < 0)
		return ret;

	ret = pdata->gpio_get();
	if (ret < 0)
		return ret;

	ret = FUNC27(camif);
	if (ret < 0)
		goto err_sd;

	ret = FUNC2(camif);
	if (ret < 0)
		goto err_clk;

	FUNC22(pdev, camif);
	FUNC11(camif->clock[CLK_CAM],
			camif->pdata.sensor.clock_frequency);

	FUNC13(dev, "sensor clock frequency: %lu\n",
		 FUNC10(camif->clock[CLK_CAM]));
	/*
	 * Set initial pixel format, resolution and crop rectangle.
	 * Must be done before a sensor subdev is registered as some
	 * settings are overrode with values from sensor subdev.
	 */
	FUNC28(camif);

	FUNC24(dev);

	ret = FUNC25(dev);
	if (ret < 0)
		goto err_pm;

	ret = FUNC5(camif);
	if (ret < 0)
		goto err_alloc;

	ret = FUNC6(camif);
	if (ret < 0)
		goto err_sens;

	ret = FUNC33(&camif->v4l2_dev, &camif->subdev);
	if (ret < 0)
		goto err_sens;

	ret = FUNC34(&camif->v4l2_dev);
	if (ret < 0)
		goto err_sens;

	ret = FUNC7(camif);
	if (ret < 0)
		goto err_sens;

	ret = FUNC4(camif);
	if (ret < 0)
		goto err_sens;

	ret = FUNC17(&camif->media_dev);
	if (ret < 0)
		goto err_sens;

	FUNC26(dev);
	return 0;

err_sens:
	FUNC35(&camif->v4l2_dev);
	FUNC18(&camif->media_dev);
	FUNC16(&camif->media_dev);
	FUNC9(camif);
err_alloc:
	FUNC26(dev);
	FUNC23(dev);
err_pm:
	FUNC3(camif);
err_clk:
	FUNC29(camif);
err_sd:
	pdata->gpio_put();
	return ret;
}