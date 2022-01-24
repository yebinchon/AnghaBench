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
struct TYPE_2__ {struct device* parent; int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; } ;
struct xsdfec_dev {scalar_t__ irq; int dev_id; int /*<<< orphan*/  clks; TYPE_1__ miscdev; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  waitq; int /*<<< orphan*/  regs; struct device* dev; int /*<<< orphan*/  error_data_lock; } ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_NAME_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MISC_DYNAMIC_MINOR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  dev_nrs ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct xsdfec_dev* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct xsdfec_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct xsdfec_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct xsdfec_dev*) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xsdfec_fops ; 
 int /*<<< orphan*/  xsdfec_irq_thread ; 
 int FUNC19 (struct xsdfec_dev*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct xsdfec_dev *xsdfec;
	struct device *dev;
	struct resource *res;
	int err;
	bool irq_enabled = true;

	xsdfec = FUNC5(&pdev->dev, sizeof(*xsdfec), GFP_KERNEL);
	if (!xsdfec)
		return -ENOMEM;

	xsdfec->dev = &pdev->dev;
	FUNC15(&xsdfec->error_data_lock);

	err = FUNC17(pdev, &xsdfec->clks);
	if (err)
		return err;

	dev = xsdfec->dev;
	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	xsdfec->regs = FUNC4(dev, res);
	if (FUNC0(xsdfec->regs)) {
		err = FUNC1(xsdfec->regs);
		goto err_xsdfec_dev;
	}

	xsdfec->irq = FUNC11(pdev, 0);
	if (xsdfec->irq < 0) {
		FUNC2(dev, "platform_get_irq failed");
		irq_enabled = false;
	}

	err = FUNC19(xsdfec);
	if (err < 0)
		goto err_xsdfec_dev;

	FUNC16(xsdfec);

	/* Save driver private data */
	FUNC13(pdev, xsdfec);

	if (irq_enabled) {
		FUNC9(&xsdfec->waitq);
		/* Register IRQ thread */
		err = FUNC6(dev, xsdfec->irq, NULL,
						xsdfec_irq_thread, IRQF_ONESHOT,
						"xilinx-sdfec16", xsdfec);
		if (err < 0) {
			FUNC3(dev, "unable to request IRQ%d", xsdfec->irq);
			goto err_xsdfec_dev;
		}
	}

	err = FUNC7(&dev_nrs, GFP_KERNEL);
	if (err < 0)
		goto err_xsdfec_dev;
	xsdfec->dev_id = err;

	FUNC14(xsdfec->dev_name, DEV_NAME_LEN, "xsdfec%d", xsdfec->dev_id);
	xsdfec->miscdev.minor = MISC_DYNAMIC_MINOR;
	xsdfec->miscdev.name = xsdfec->dev_name;
	xsdfec->miscdev.fops = &xsdfec_fops;
	xsdfec->miscdev.parent = dev;
	err = FUNC10(&xsdfec->miscdev);
	if (err) {
		FUNC3(dev, "error:%d. Unable to register device", err);
		goto err_xsdfec_ida;
	}
	return 0;

err_xsdfec_ida:
	FUNC8(&dev_nrs, xsdfec->dev_id);
err_xsdfec_dev:
	FUNC18(&xsdfec->clks);
	return err;
}