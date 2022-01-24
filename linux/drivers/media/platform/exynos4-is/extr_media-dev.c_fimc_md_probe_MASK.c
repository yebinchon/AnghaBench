#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v4l2_device {int /*<<< orphan*/  name; int /*<<< orphan*/  notify; TYPE_4__* mdev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {struct device* dev; int /*<<< orphan*/ * ops; int /*<<< orphan*/  model; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;
struct fimc_md {int user_subdev_api; scalar_t__ num_sensors; struct v4l2_device v4l2_dev; TYPE_4__ media_dev; TYPE_1__ subdev_notifier; int /*<<< orphan*/  use_isp; struct platform_device* pdev; int /*<<< orphan*/  pipelines; int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_subdev_conf_mode ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 struct fimc_md* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fimc_md*) ; 
 int FUNC6 (struct fimc_md*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fimc_md_ops ; 
 int /*<<< orphan*/  FUNC8 (struct fimc_md*) ; 
 int FUNC9 (struct fimc_md*) ; 
 int FUNC10 (struct fimc_md*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct fimc_md*) ; 
 int /*<<< orphan*/  FUNC12 (struct fimc_md*) ; 
 int /*<<< orphan*/  FUNC13 (struct fimc_md*) ; 
 int /*<<< orphan*/  fimc_sensor_notify ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct fimc_md*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  subdev_notifier_ops ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int FUNC21 (struct v4l2_device*,TYPE_1__*) ; 
 int FUNC22 (struct device*,struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct v4l2_device*,char*,...) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct v4l2_device *v4l2_dev;
	struct fimc_md *fmd;
	int ret;

	fmd = FUNC4(dev, sizeof(*fmd), GFP_KERNEL);
	if (!fmd)
		return -ENOMEM;

	FUNC17(&fmd->slock);
	FUNC0(&fmd->pipelines);
	fmd->pdev = pdev;

	FUNC18(fmd->media_dev.model, "SAMSUNG S5P FIMC",
		sizeof(fmd->media_dev.model));
	fmd->media_dev.ops = &fimc_md_ops;
	fmd->media_dev.dev = dev;

	v4l2_dev = &fmd->v4l2_dev;
	v4l2_dev->mdev = &fmd->media_dev;
	v4l2_dev->notify = fimc_sensor_notify;
	FUNC18(v4l2_dev->name, "s5p-fimc-md", sizeof(v4l2_dev->name));

	fmd->use_isp = FUNC7(dev->of_node);
	fmd->user_subdev_api = true;

	FUNC15(&fmd->media_dev);

	ret = FUNC22(dev, &fmd->v4l2_dev);
	if (ret < 0) {
		FUNC24(v4l2_dev, "Failed to register v4l2_device: %d\n", ret);
		return ret;
	}

	ret = FUNC5(fmd);
	if (ret)
		goto err_md;

	ret = FUNC6(fmd);
	if (ret < 0) {
		if (ret != EPROBE_DEFER)
			FUNC1(dev, "Failed to get pinctrl: %d\n", ret);
		goto err_clk;
	}

	FUNC16(pdev, fmd);

	FUNC20(&fmd->subdev_notifier);

	ret = FUNC10(fmd, dev->of_node);
	if (ret)
		goto err_clk;

	ret = FUNC11(fmd);
	if (ret)
		goto err_m_ent;

	ret = FUNC2(&pdev->dev, &dev_attr_subdev_conf_mode);
	if (ret)
		goto err_cleanup;
	/*
	 * FIMC platform devices need to be registered before the sclk_cam
	 * clocks provider, as one of these devices needs to be activated
	 * to enable the clock.
	 */
	ret = FUNC9(fmd);
	if (ret < 0) {
		FUNC24(v4l2_dev, "clock provider registration failed\n");
		goto err_attr;
	}

	if (fmd->num_sensors > 0) {
		fmd->subdev_notifier.ops = &subdev_notifier_ops;
		fmd->num_sensors = 0;

		ret = FUNC21(&fmd->v4l2_dev,
						&fmd->subdev_notifier);
		if (ret)
			goto err_clk_p;
	}

	return 0;

err_clk_p:
	FUNC12(fmd);
err_attr:
	FUNC3(&pdev->dev, &dev_attr_subdev_conf_mode);
err_cleanup:
	FUNC19(&fmd->subdev_notifier);
err_m_ent:
	FUNC13(fmd);
err_clk:
	FUNC8(fmd);
err_md:
	FUNC14(&fmd->media_dev);
	FUNC23(&fmd->v4l2_dev);
	return ret;
}