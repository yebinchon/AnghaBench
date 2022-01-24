#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ab8500_gpadc {scalar_t__ irq_sw; scalar_t__ irq_hw; TYPE_1__* dev; int /*<<< orphan*/  node; int /*<<< orphan*/  regu; int /*<<< orphan*/  ab8500_gpadc_complete; int /*<<< orphan*/  ab8500_gpadc_lock; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPADC_AUDOSUSPEND_DELAY ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ab8500_bm_gpadcconvend_handler ; 
 int /*<<< orphan*/  ab8500_gpadc_list ; 
 int /*<<< orphan*/  FUNC2 (struct ab8500_gpadc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ab8500_gpadc* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct ab8500_gpadc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct ab8500_gpadc*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct ab8500_gpadc*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	int ret = 0;
	struct ab8500_gpadc *gpadc;

	gpadc = FUNC6(&pdev->dev,
			     sizeof(struct ab8500_gpadc), GFP_KERNEL);
	if (!gpadc)
		return -ENOMEM;

	gpadc->irq_sw = FUNC12(pdev, "SW_CONV_END");
	if (gpadc->irq_sw < 0)
		FUNC4(gpadc->dev, "failed to get platform sw_conv_end irq\n");

	gpadc->irq_hw = FUNC12(pdev, "HW_CONV_END");
	if (gpadc->irq_hw < 0)
		FUNC4(gpadc->dev, "failed to get platform hw_conv_end irq\n");

	gpadc->dev = &pdev->dev;
	gpadc->parent = FUNC5(pdev->dev.parent);
	FUNC11(&gpadc->ab8500_gpadc_lock);

	/* Initialize completion used to notify completion of conversion */
	FUNC9(&gpadc->ab8500_gpadc_complete);

	/* Register interrupts */
	if (gpadc->irq_sw >= 0) {
		ret = FUNC19(gpadc->irq_sw, NULL,
			ab8500_bm_gpadcconvend_handler,
			IRQF_NO_SUSPEND | IRQF_SHARED | IRQF_ONESHOT,
			"ab8500-gpadc-sw",
			gpadc);
		if (ret < 0) {
			FUNC4(gpadc->dev,
				"Failed to register interrupt irq: %d\n",
				gpadc->irq_sw);
			goto fail;
		}
	}

	if (gpadc->irq_hw >= 0) {
		ret = FUNC19(gpadc->irq_hw, NULL,
			ab8500_bm_gpadcconvend_handler,
			IRQF_NO_SUSPEND | IRQF_SHARED | IRQF_ONESHOT,
			"ab8500-gpadc-hw",
			gpadc);
		if (ret < 0) {
			FUNC4(gpadc->dev,
				"Failed to register interrupt irq: %d\n",
				gpadc->irq_hw);
			goto fail_irq;
		}
	}

	/* VTVout LDO used to power up ab8500-GPADC */
	gpadc->regu = FUNC7(&pdev->dev, "vddadc");
	if (FUNC0(gpadc->regu)) {
		ret = FUNC1(gpadc->regu);
		FUNC4(gpadc->dev, "failed to get vtvout LDO\n");
		goto fail_irq;
	}

	FUNC13(pdev, gpadc);

	ret = FUNC18(gpadc->regu);
	if (ret) {
		FUNC4(gpadc->dev, "Failed to enable vtvout LDO: %d\n", ret);
		goto fail_enable;
	}

	FUNC16(gpadc->dev, GPADC_AUDOSUSPEND_DELAY);
	FUNC17(gpadc->dev);
	FUNC15(gpadc->dev);
	FUNC14(gpadc->dev);

	FUNC2(gpadc);
	FUNC10(&gpadc->node, &ab8500_gpadc_list);
	FUNC3(gpadc->dev, "probe success\n");

	return 0;

fail_enable:
fail_irq:
	FUNC8(gpadc->irq_sw, gpadc);
	FUNC8(gpadc->irq_hw, gpadc);
fail:
	return ret;
}