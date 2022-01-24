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
struct vpe_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/ * vpdma; int /*<<< orphan*/  vpdma_data; int /*<<< orphan*/  csc; int /*<<< orphan*/  sc; int /*<<< orphan*/  base; TYPE_1__* res; int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  num_instances; int /*<<< orphan*/  lock; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_32K ; 
 int /*<<< orphan*/  VPE_MODULE_NAME ; 
 int /*<<< orphan*/  VPE_PID ; 
 int /*<<< orphan*/  VPE_PID_FUNC_MASK ; 
 int /*<<< orphan*/  VPE_PID_FUNC_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vpe_dev* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vpe_dev*) ; 
 int /*<<< orphan*/  m2m_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct vpe_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct vpe_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct platform_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct vpe_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct vpe_dev*,char*) ; 
 int /*<<< orphan*/  vpe_fw_cb ; 
 int /*<<< orphan*/  vpe_irq ; 
 int FUNC23 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct vpe_dev*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct vpe_dev*) ; 
 int /*<<< orphan*/  FUNC27 (struct vpe_dev*) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct vpe_dev *dev;
	int ret, irq, func;

	dev = FUNC5(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	FUNC15(&dev->lock);

	ret = FUNC16(&pdev->dev, &dev->v4l2_dev);
	if (ret)
		return ret;

	FUNC2(&dev->num_instances, 0);
	FUNC7(&dev->dev_mutex);

	dev->res = FUNC9(pdev, IORESOURCE_MEM,
			"vpe_top");
	/*
	 * HACK: we get resource info from device tree in the form of a list of
	 * VPE sub blocks, the driver currently uses only the base of vpe_top
	 * for register access, the driver should be changed later to access
	 * registers based on the sub block base addresses
	 */
	dev->base = FUNC4(&pdev->dev, dev->res->start, SZ_32K);
	if (!dev->base) {
		ret = -ENOMEM;
		goto v4l2_dev_unreg;
	}

	irq = FUNC8(pdev, 0);
	ret = FUNC6(&pdev->dev, irq, vpe_irq, 0, VPE_MODULE_NAME,
			dev);
	if (ret)
		goto v4l2_dev_unreg;

	FUNC10(pdev, dev);

	dev->m2m_dev = FUNC18(&m2m_ops);
	if (FUNC0(dev->m2m_dev)) {
		FUNC22(dev, "Failed to init mem2mem device\n");
		ret = FUNC1(dev->m2m_dev);
		goto v4l2_dev_unreg;
	}

	FUNC12(&pdev->dev);

	ret = FUNC23(pdev);
	if (ret)
		goto rel_m2m;

	/* Perform clk enable followed by reset */
	FUNC25(dev, 1);

	FUNC26(dev);

	func = FUNC13(dev, VPE_PID, VPE_PID_FUNC_MASK,
		VPE_PID_FUNC_SHIFT);
	FUNC21(dev, "VPE PID function %x\n", func);

	FUNC27(dev);

	dev->sc = FUNC14(pdev, "sc");
	if (FUNC0(dev->sc)) {
		ret = FUNC1(dev->sc);
		goto runtime_put;
	}

	dev->csc = FUNC3(pdev, "csc");
	if (FUNC0(dev->csc)) {
		ret = FUNC1(dev->csc);
		goto runtime_put;
	}

	dev->vpdma = &dev->vpdma_data;
	ret = FUNC20(pdev, dev->vpdma, vpe_fw_cb);
	if (ret)
		goto runtime_put;

	return 0;

runtime_put:
	FUNC24(pdev);
rel_m2m:
	FUNC11(&pdev->dev);
	FUNC19(dev->m2m_dev);
v4l2_dev_unreg:
	FUNC17(&dev->v4l2_dev);

	return ret;
}