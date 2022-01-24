#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct cal_dev {struct cal_ctx** ctx; void** cc; void* cm; TYPE_2__* res; void* base; struct platform_device* pdev; TYPE_1__ v4l2_dev; } ;
struct cal_ctx {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  notifier; } ;
struct TYPE_5__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAL_MODULE_NAME ; 
 int CAL_NUM_CONTEXT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (struct cal_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct cal_dev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct cal_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cal_dev*) ; 
 int /*<<< orphan*/  cal_irq ; 
 int FUNC6 (struct cal_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct cal_dev*) ; 
 void* FUNC8 (struct cal_dev*,int) ; 
 void* FUNC9 (struct cal_dev*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 struct cal_dev* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cal_dev*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct cal_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct cal_dev *dev;
	struct cal_ctx *ctx;
	int ret;
	int irq;
	int i;

	dev = FUNC11(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	/* set pseudo v4l2 device name so we can use v4l2_printk */
	FUNC18(dev->v4l2_dev.name, CAL_MODULE_NAME,
		sizeof(dev->v4l2_dev.name));

	/* save pdev pointer */
	dev->pdev = pdev;

	dev->res = FUNC14(pdev, IORESOURCE_MEM,
						"cal_top");
	dev->base = FUNC10(&pdev->dev, dev->res);
	if (FUNC0(dev->base))
		return FUNC1(dev->base);

	FUNC3(1, dev, "ioresource %s at %pa - %pa\n",
		dev->res->name, &dev->res->start, &dev->res->end);

	irq = FUNC13(pdev, 0);
	FUNC3(1, dev, "got irq# %d\n", irq);
	ret = FUNC12(&pdev->dev, irq, cal_irq, 0, CAL_MODULE_NAME,
			       dev);
	if (ret)
		return ret;

	FUNC15(pdev, dev);

	dev->cm = FUNC9(dev);
	if (FUNC0(dev->cm))
		return FUNC1(dev->cm);

	dev->cc[0] = FUNC8(dev, 0);
	if (FUNC0(dev->cc[0]))
		return FUNC1(dev->cc[0]);

	dev->cc[1] = FUNC8(dev, 1);
	if (FUNC0(dev->cc[1]))
		return FUNC1(dev->cc[1]);

	dev->ctx[0] = NULL;
	dev->ctx[1] = NULL;

	dev->ctx[0] = FUNC2(dev, 0);
	dev->ctx[1] = FUNC2(dev, 1);
	if (!dev->ctx[0] && !dev->ctx[1]) {
		FUNC4(dev, "Neither port is configured, no point in staying up\n");
		return -ENODEV;
	}

	FUNC17(&pdev->dev);

	ret = FUNC6(dev);
	if (ret)
		goto runtime_disable;

	/* Just check we can actually access the module */
	FUNC5(dev);

	FUNC7(dev);

	return 0;

runtime_disable:
	FUNC16(&pdev->dev);
	for (i = 0; i < CAL_NUM_CONTEXT; i++) {
		ctx = dev->ctx[i];
		if (ctx) {
			FUNC20(&ctx->notifier);
			FUNC19(&ctx->notifier);
			FUNC21(&ctx->ctrl_handler);
			FUNC22(&ctx->v4l2_dev);
		}
	}

	return ret;
}