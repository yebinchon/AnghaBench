#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
struct platform_device_id {size_t driver_data; scalar_t__ product; int /*<<< orphan*/  iram_size; scalar_t__ tempbuf_size; scalar_t__ workbuf_size; } ;
struct TYPE_17__ {struct device_node* of_node; struct coda_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {struct platform_device_id* data; } ;
struct gen_pool {int dummy; } ;
struct device_node {int dummy; } ;
struct coda_platform_data {int /*<<< orphan*/  iram_dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct TYPE_16__ {TYPE_14__ blob; int /*<<< orphan*/  dentry; int /*<<< orphan*/  size; scalar_t__ vaddr; int /*<<< orphan*/  paddr; } ;
struct coda_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  workqueue; TYPE_1__ iram; int /*<<< orphan*/  debugfs_root; struct gen_pool* iram_pool; struct platform_device_id* devtype; int /*<<< orphan*/  tempbuf; int /*<<< orphan*/  workbuf; int /*<<< orphan*/  ida; int /*<<< orphan*/  coda_mutex; int /*<<< orphan*/  dev_mutex; void* vdoa; void* rstc; void* regs_base; void* clk_ahb; void* clk_per; TYPE_2__* dev; int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
 scalar_t__ CODA_DX6 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int WQ_MEM_RECLAIM ; 
 int WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (struct coda_dev*,int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 struct platform_device_id* coda_devdata ; 
 int /*<<< orphan*/  coda_dt_ids ; 
 int FUNC4 (struct coda_dev*) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  coda_irq_handler ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 void* FUNC12 (TYPE_2__*,char*) ; 
 struct coda_dev* FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct coda_dev*) ; 
 void* FUNC16 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct gen_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct gen_pool* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 struct gen_pool* FUNC22 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC23 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 struct platform_device_id* FUNC25 (struct platform_device*) ; 
 int FUNC26 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC28 (struct platform_device*,struct coda_dev*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int FUNC33 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC35(struct platform_device *pdev)
{
	const struct of_device_id *of_id =
			FUNC23(FUNC24(coda_dt_ids), &pdev->dev);
	const struct platform_device_id *pdev_id;
	struct coda_platform_data *pdata = pdev->dev.platform_data;
	struct device_node *np = pdev->dev.of_node;
	struct gen_pool *pool;
	struct coda_dev *dev;
	int ret, irq;

	dev = FUNC13(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	pdev_id = of_id ? of_id->data : FUNC25(pdev);

	if (of_id)
		dev->devtype = of_id->data;
	else if (pdev_id)
		dev->devtype = &coda_devdata[pdev_id->driver_data];
	else
		return -EINVAL;

	FUNC32(&dev->irqlock);

	dev->dev = &pdev->dev;
	dev->clk_per = FUNC12(&pdev->dev, "per");
	if (FUNC0(dev->clk_per)) {
		FUNC9(&pdev->dev, "Could not get per clock\n");
		return FUNC1(dev->clk_per);
	}

	dev->clk_ahb = FUNC12(&pdev->dev, "ahb");
	if (FUNC0(dev->clk_ahb)) {
		FUNC9(&pdev->dev, "Could not get ahb clock\n");
		return FUNC1(dev->clk_ahb);
	}

	/* Get  memory for physical registers */
	dev->regs_base = FUNC14(pdev, 0);
	if (FUNC0(dev->regs_base))
		return FUNC1(dev->regs_base);

	/* IRQ */
	irq = FUNC27(pdev, "bit");
	if (irq < 0)
		irq = FUNC26(pdev, 0);
	if (irq < 0) {
		FUNC9(&pdev->dev, "failed to get irq resource\n");
		return irq;
	}

	ret = FUNC15(&pdev->dev, irq, coda_irq_handler, 0,
			       FUNC10(&pdev->dev), dev);
	if (ret < 0) {
		FUNC9(&pdev->dev, "failed to request irq: %d\n", ret);
		return ret;
	}

	dev->rstc = FUNC16(&pdev->dev,
							      NULL);
	if (FUNC0(dev->rstc)) {
		ret = FUNC1(dev->rstc);
		FUNC9(&pdev->dev, "failed get reset control: %d\n", ret);
		return ret;
	}

	/* Get IRAM pool from device tree or platform data */
	pool = FUNC22(np, "iram", 0);
	if (!pool && pdata)
		pool = FUNC18(pdata->iram_dev, NULL);
	if (!pool) {
		FUNC9(&pdev->dev, "iram pool not available\n");
		return -ENOMEM;
	}
	dev->iram_pool = pool;

	/* Get vdoa_data if supported by the platform */
	dev->vdoa = FUNC5();
	if (FUNC1(dev->vdoa) == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	ret = FUNC33(&pdev->dev, &dev->v4l2_dev);
	if (ret)
		return ret;

	FUNC21(&dev->dev_mutex);
	FUNC21(&dev->coda_mutex);
	FUNC19(&dev->ida);

	dev->debugfs_root = FUNC7("coda", NULL);
	if (!dev->debugfs_root)
		FUNC11(&pdev->dev, "failed to create debugfs root\n");

	/* allocate auxiliary per-device buffers for the BIT processor */
	if (dev->devtype->product == CODA_DX6) {
		ret = FUNC3(dev, &dev->workbuf,
					 dev->devtype->workbuf_size, "workbuf",
					 dev->debugfs_root);
		if (ret < 0)
			goto err_v4l2_register;
	}

	if (dev->devtype->tempbuf_size) {
		ret = FUNC3(dev, &dev->tempbuf,
					 dev->devtype->tempbuf_size, "tempbuf",
					 dev->debugfs_root);
		if (ret < 0)
			goto err_v4l2_register;
	}

	dev->iram.size = dev->devtype->iram_size;
	dev->iram.vaddr = FUNC17(dev->iram_pool, dev->iram.size,
					     &dev->iram.paddr);
	if (!dev->iram.vaddr) {
		FUNC11(&pdev->dev, "unable to alloc iram\n");
	} else {
		FUNC20(dev->iram.vaddr, 0, dev->iram.size);
		dev->iram.blob.data = dev->iram.vaddr;
		dev->iram.blob.size = dev->iram.size;
		dev->iram.dentry = FUNC6("iram", 0644,
						       dev->debugfs_root,
						       &dev->iram.blob);
	}

	dev->workqueue = FUNC2("coda", WQ_UNBOUND | WQ_MEM_RECLAIM, 1);
	if (!dev->workqueue) {
		FUNC9(&pdev->dev, "unable to alloc workqueue\n");
		ret = -ENOMEM;
		goto err_v4l2_register;
	}

	FUNC28(pdev, dev);

	/*
	 * Start activated so we can directly call coda_hw_init in
	 * coda_fw_callback regardless of whether CONFIG_PM is
	 * enabled or whether the device is associated with a PM domain.
	 */
	FUNC30(&pdev->dev);
	FUNC31(&pdev->dev);
	FUNC29(&pdev->dev);

	ret = FUNC4(dev);
	if (ret)
		goto err_alloc_workqueue;
	return 0;

err_alloc_workqueue:
	FUNC8(dev->workqueue);
err_v4l2_register:
	FUNC34(&dev->v4l2_dev);
	return ret;
}