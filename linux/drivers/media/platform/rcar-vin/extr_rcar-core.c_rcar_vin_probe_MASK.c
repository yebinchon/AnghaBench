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
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct soc_device_attribute {TYPE_4__* data; } ;
struct rvin_dev {int alpha; TYPE_1__* group; int /*<<< orphan*/  v4l2_dev; TYPE_4__* info; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  base; int /*<<< orphan*/ * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {scalar_t__ use_mc; } ;
struct TYPE_6__ {int /*<<< orphan*/ * v4l2_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; TYPE_2__ notifier; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 struct rvin_dev* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  r8a7795es1 ; 
 int FUNC12 (struct rvin_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct rvin_dev*) ; 
 int FUNC15 (struct rvin_dev*) ; 
 int FUNC16 (struct rvin_dev*) ; 
 struct soc_device_attribute* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	const struct soc_device_attribute *attr;
	struct rvin_dev *vin;
	struct resource *mem;
	int irq, ret;

	vin = FUNC3(&pdev->dev, sizeof(*vin), GFP_KERNEL);
	if (!vin)
		return -ENOMEM;

	vin->dev = &pdev->dev;
	vin->info = FUNC6(&pdev->dev);
	vin->alpha = 0xff;

	/*
	 * Special care is needed on r8a7795 ES1.x since it
	 * uses different routing than r8a7795 ES2.0.
	 */
	attr = FUNC17(r8a7795es1);
	if (attr)
		vin->info = attr->data;

	mem = FUNC8(pdev, IORESOURCE_MEM, 0);
	if (mem == NULL)
		return -EINVAL;

	vin->base = FUNC2(vin->dev, mem);
	if (FUNC0(vin->base))
		return FUNC1(vin->base);

	irq = FUNC7(pdev, 0);
	if (irq < 0)
		return irq;

	ret = FUNC12(vin, irq);
	if (ret)
		return ret;

	FUNC9(pdev, vin);

	if (vin->info->use_mc) {
		ret = FUNC15(vin);
		if (ret)
			goto error_dma_unregister;
	}

	ret = FUNC16(vin);
	if (ret)
		goto error_group_unregister;

	FUNC11(&pdev->dev, true);
	FUNC10(&pdev->dev);

	return 0;

error_group_unregister:
	FUNC20(&vin->ctrl_handler);

	if (vin->info->use_mc) {
		FUNC4(&vin->group->lock);
		if (&vin->v4l2_dev == vin->group->notifier.v4l2_dev) {
			FUNC19(&vin->group->notifier);
			FUNC18(&vin->group->notifier);
		}
		FUNC5(&vin->group->lock);
		FUNC14(vin);
	}

error_dma_unregister:
	FUNC13(vin);

	return ret;
}