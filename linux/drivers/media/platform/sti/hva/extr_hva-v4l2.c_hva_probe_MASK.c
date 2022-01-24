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
struct hva_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  work_queue; TYPE_1__* vdev; int /*<<< orphan*/  lock; struct platform_device* pdev; struct device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HVA_NAME ; 
 int /*<<< orphan*/  HVA_PREFIX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hva_dev* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hva_dev*) ; 
 int FUNC9 (struct platform_device*,struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct hva_dev*) ; 
 int FUNC11 (struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct hva_dev*) ; 
 int FUNC16 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct hva_dev *hva;
	struct device *dev = &pdev->dev;
	int ret;

	hva = FUNC5(dev, sizeof(*hva), GFP_KERNEL);
	if (!hva) {
		ret = -ENOMEM;
		goto err;
	}

	ret = FUNC6(dev, FUNC0(32));
	if (ret)
		return ret;

	hva->dev = dev;
	hva->pdev = pdev;
	FUNC13(pdev, hva);

	FUNC12(&hva->lock);

	/* probe hardware */
	ret = FUNC9(pdev, hva);
	if (ret)
		goto err;

	/* register all available encoders */
	FUNC14(hva);

	/* register all supported formats */
	FUNC15(hva);

	/* register on V4L2 */
	ret = FUNC16(dev, &hva->v4l2_dev);
	if (ret) {
		FUNC3(dev, "%s %s failed to register V4L2 device\n",
			HVA_PREFIX, HVA_NAME);
		goto err_hw;
	}

#ifdef CONFIG_VIDEO_STI_HVA_DEBUGFS
	hva_debugfs_create(hva);
#endif

	hva->work_queue = FUNC1(HVA_NAME);
	if (!hva->work_queue) {
		FUNC3(dev, "%s %s failed to allocate work queue\n",
			HVA_PREFIX, HVA_NAME);
		ret = -ENOMEM;
		goto err_v4l2;
	}

	/* register device */
	ret = FUNC11(hva);
	if (ret)
		goto err_work_queue;

	FUNC4(dev, "%s %s registered as /dev/video%d\n", HVA_PREFIX,
		 HVA_NAME, hva->vdev->num);

	return 0;

err_work_queue:
	FUNC2(hva->work_queue);
err_v4l2:
#ifdef CONFIG_VIDEO_STI_HVA_DEBUGFS
	hva_debugfs_remove(hva);
#endif
	FUNC17(&hva->v4l2_dev);
err_hw:
	FUNC10(hva);
err:
	return ret;
}