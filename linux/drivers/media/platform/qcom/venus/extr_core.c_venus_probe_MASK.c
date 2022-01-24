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
struct venus_core {scalar_t__ irq; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  instances; TYPE_1__* res; int /*<<< orphan*/  base; struct device* dev; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; void* dma_parms; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDC_SESSION_TYPE_DEC ; 
 int /*<<< orphan*/  VIDC_SESSION_TYPE_ENC ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct venus_core*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct venus_core*,int) ; 
 int FUNC11 (struct venus_core*) ; 
 int FUNC12 (struct venus_core*,int) ; 
 int FUNC13 (struct venus_core*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct venus_core*) ; 
 int /*<<< orphan*/  hfi_isr ; 
 int /*<<< orphan*/  hfi_isr_thread ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (struct device*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 scalar_t__ FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct venus_core*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int FUNC23 (struct device*) ; 
 int FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int FUNC26 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (struct venus_core*) ; 
 int FUNC29 (struct venus_core*) ; 
 int /*<<< orphan*/  venus_core_ops ; 
 int FUNC30 (struct venus_core*,int /*<<< orphan*/ ) ; 
 int FUNC31 (struct venus_core*) ; 
 int /*<<< orphan*/  FUNC32 (struct venus_core*) ; 
 int /*<<< orphan*/  venus_sys_error_handler ; 

__attribute__((used)) static int FUNC33(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct venus_core *core;
	struct resource *r;
	int ret;

	core = FUNC6(dev, sizeof(*core), GFP_KERNEL);
	if (!core)
		return -ENOMEM;

	core->dev = dev;
	FUNC20(pdev, core);

	r = FUNC19(pdev, IORESOURCE_MEM, 0);
	core->base = FUNC5(dev, r);
	if (FUNC3(core->base))
		return FUNC4(core->base);

	core->irq = FUNC18(pdev, 0);
	if (core->irq < 0)
		return core->irq;

	core->res = FUNC16(dev);
	if (!core->res)
		return -ENODEV;

	ret = FUNC29(core);
	if (ret)
		return ret;

	ret = FUNC8(dev, core->res->dma_mask);
	if (ret)
		return ret;

	if (!dev->dma_parms) {
		dev->dma_parms = FUNC6(dev, sizeof(*dev->dma_parms),
					      GFP_KERNEL);
		if (!dev->dma_parms)
			return -ENOMEM;
	}
	FUNC9(dev, FUNC0(32));

	FUNC2(&core->instances);
	FUNC15(&core->lock);
	FUNC1(&core->work, venus_sys_error_handler);

	ret = FUNC7(dev, core->irq, hfi_isr, hfi_isr_thread,
					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					"venus", core);
	if (ret)
		return ret;

	ret = FUNC13(core, &venus_core_ops);
	if (ret)
		return ret;

	FUNC22(dev);

	ret = FUNC23(dev);
	if (ret < 0)
		goto err_runtime_disable;

	ret = FUNC17(dev->of_node, NULL, NULL, dev);
	if (ret)
		goto err_runtime_disable;

	ret = FUNC31(core);
	if (ret)
		goto err_runtime_disable;

	ret = FUNC28(core);
	if (ret)
		goto err_runtime_disable;

	ret = FUNC12(core, true);
	if (ret)
		goto err_venus_shutdown;

	ret = FUNC11(core);
	if (ret)
		goto err_venus_shutdown;

	ret = FUNC30(core, VIDC_SESSION_TYPE_DEC);
	if (ret)
		goto err_venus_shutdown;

	ret = FUNC30(core, VIDC_SESSION_TYPE_ENC);
	if (ret)
		goto err_venus_shutdown;

	ret = FUNC26(dev, &core->v4l2_dev);
	if (ret)
		goto err_core_deinit;

	ret = FUNC24(dev);
	if (ret)
		goto err_dev_unregister;

	return 0;

err_dev_unregister:
	FUNC27(&core->v4l2_dev);
err_core_deinit:
	FUNC10(core, false);
err_venus_shutdown:
	FUNC32(core);
err_runtime_disable:
	FUNC25(dev);
	FUNC21(dev);
	FUNC14(core);
	return ret;
}