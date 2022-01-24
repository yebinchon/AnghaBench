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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct delta_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  work_queue; TYPE_1__* vdev; struct device* dev; int /*<<< orphan*/ * clk_flash_promip; int /*<<< orphan*/ * clk_st231; int /*<<< orphan*/ * clk_delta; int /*<<< orphan*/  lock; struct platform_device* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELTA_HW_AUTOSUSPEND_DELAY_MS ; 
 int /*<<< orphan*/  DELTA_NAME ; 
 int /*<<< orphan*/  DELTA_PREFIX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct delta_dev*) ; 
 int FUNC3 (struct delta_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct device*,char*) ; 
 struct delta_dev* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct delta_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct delta_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct delta_dev*) ; 
 int FUNC18 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct delta_dev *delta;
	struct device *dev = &pdev->dev;
	int ret;

	delta = FUNC9(dev, sizeof(*delta), GFP_KERNEL);
	if (!delta) {
		ret = -ENOMEM;
		goto err;
	}

	delta->dev = dev;
	delta->pdev = pdev;
	FUNC11(pdev, delta);

	FUNC10(&delta->lock);

	/* get clock resources */
	delta->clk_delta = FUNC8(dev, "delta");
	if (FUNC0(delta->clk_delta)) {
		FUNC5(dev, "%s can't get delta clock\n", DELTA_PREFIX);
		delta->clk_delta = NULL;
	}

	delta->clk_st231 = FUNC8(dev, "delta-st231");
	if (FUNC0(delta->clk_st231)) {
		FUNC5(dev, "%s can't get delta-st231 clock\n", DELTA_PREFIX);
		delta->clk_st231 = NULL;
	}

	delta->clk_flash_promip = FUNC8(dev, "delta-flash-promip");
	if (FUNC0(delta->clk_flash_promip)) {
		FUNC5(dev, "%s can't get delta-flash-promip clock\n",
			DELTA_PREFIX);
		delta->clk_flash_promip = NULL;
	}

	/* init pm_runtime used for power management */
	FUNC13(dev, DELTA_HW_AUTOSUSPEND_DELAY_MS);
	FUNC15(dev);
	FUNC14(dev);
	FUNC12(dev);

	/* init firmware ipc channel */
	ret = FUNC2(delta);
	if (ret) {
		FUNC6(delta->dev, "%s failed to initialize firmware ipc channel\n",
			DELTA_PREFIX);
		goto err;
	}

	/* register all available decoders */
	FUNC16(delta);

	/* register all supported formats */
	FUNC17(delta);

	/* register on V4L2 */
	ret = FUNC18(dev, &delta->v4l2_dev);
	if (ret) {
		FUNC6(delta->dev, "%s failed to register V4L2 device\n",
			DELTA_PREFIX);
		goto err;
	}

	delta->work_queue = FUNC1(DELTA_NAME);
	if (!delta->work_queue) {
		FUNC6(delta->dev, "%s failed to allocate work queue\n",
			DELTA_PREFIX);
		ret = -ENOMEM;
		goto err_v4l2;
	}

	/* register device */
	ret = FUNC3(delta);
	if (ret)
		goto err_work_queue;

	FUNC7(dev, "%s %s registered as /dev/video%d\n",
		 DELTA_PREFIX, delta->vdev->name, delta->vdev->num);

	return 0;

err_work_queue:
	FUNC4(delta->work_queue);
err_v4l2:
	FUNC19(&delta->v4l2_dev);
err:
	return ret;
}