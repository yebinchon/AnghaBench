#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {scalar_t__ platform_data; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/ * v4l2_dev; } ;
struct ceu_device {int /*<<< orphan*/  v4l2_dev; TYPE_1__ notifier; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  base; int /*<<< orphan*/  mlock; int /*<<< orphan*/  lock; int /*<<< orphan*/  capture; struct device* dev; } ;
struct ceu_data {int /*<<< orphan*/  irq_mask; } ;
struct TYPE_6__ {struct ceu_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct ceu_data ceu_data_sh4 ; 
 int /*<<< orphan*/  ceu_irq ; 
 int /*<<< orphan*/  ceu_notify_ops ; 
 int /*<<< orphan*/  ceu_of_match ; 
 int FUNC4 (struct ceu_device*) ; 
 int FUNC5 (struct ceu_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct resource*) ; 
 int FUNC10 (struct device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ceu_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ceu_device*) ; 
 struct ceu_device* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC14 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct ceu_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int FUNC23 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC24 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct ceu_data *ceu_data;
	struct ceu_device *ceudev;
	struct resource *res;
	unsigned int irq;
	int num_subdevs;
	int ret;

	ceudev = FUNC12(sizeof(*ceudev), GFP_KERNEL);
	if (!ceudev)
		return -ENOMEM;

	FUNC17(pdev, ceudev);
	ceudev->dev = dev;

	FUNC0(&ceudev->capture);
	FUNC20(&ceudev->lock);
	FUNC13(&ceudev->mlock);

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	ceudev->base = FUNC9(dev, res);
	if (FUNC2(ceudev->base)) {
		ret = FUNC3(ceudev->base);
		goto error_free_ceudev;
	}

	ret = FUNC15(pdev, 0);
	if (ret < 0)
		goto error_free_ceudev;
	irq = ret;

	ret = FUNC10(dev, irq, ceu_irq,
			       0, FUNC8(dev), ceudev);
	if (ret) {
		FUNC6(&pdev->dev, "Unable to request CEU interrupt.\n");
		goto error_free_ceudev;
	}

	FUNC19(dev);

	ret = FUNC24(dev, &ceudev->v4l2_dev);
	if (ret)
		goto error_pm_disable;

	FUNC22(&ceudev->notifier);

	if (FUNC1(CONFIG_OF) && dev->of_node) {
		ceu_data = FUNC14(ceu_of_match, dev)->data;
		num_subdevs = FUNC4(ceudev);
	} else if (dev->platform_data) {
		/* Assume SH4 if booting with platform data. */
		ceu_data = &ceu_data_sh4;
		num_subdevs = FUNC5(ceudev,
						      dev->platform_data);
	} else {
		num_subdevs = -EINVAL;
	}

	if (num_subdevs < 0) {
		ret = num_subdevs;
		goto error_v4l2_unregister;
	}
	ceudev->irq_mask = ceu_data->irq_mask;

	ceudev->notifier.v4l2_dev	= &ceudev->v4l2_dev;
	ceudev->notifier.ops		= &ceu_notify_ops;
	ret = FUNC23(&ceudev->v4l2_dev,
					   &ceudev->notifier);
	if (ret)
		goto error_cleanup;

	FUNC7(dev, "Renesas Capture Engine Unit %s\n", FUNC8(dev));

	return 0;

error_cleanup:
	FUNC21(&ceudev->notifier);
error_v4l2_unregister:
	FUNC25(&ceudev->v4l2_dev);
error_pm_disable:
	FUNC18(dev);
error_free_ceudev:
	FUNC11(ceudev);

	return ret;
}