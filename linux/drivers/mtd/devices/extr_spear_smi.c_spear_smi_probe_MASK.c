#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct spear_smi_plat_data {scalar_t__ clk_rate; int num_flashes; int /*<<< orphan*/ * np; } ;
struct spear_smi {scalar_t__ clk_rate; int num_flashes; int /*<<< orphan*/  clk; struct platform_device* pdev; int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  lock; int /*<<< orphan*/  io_base; } ;
struct resource {int dummy; } ;
struct TYPE_7__ {struct spear_smi_plat_data* platform_data; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_NUM_FLASH_CHIP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SMI_MAX_CLOCK_FREQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct spear_smi_plat_data* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct resource*) ; 
 void* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spear_smi*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct spear_smi*) ; 
 int /*<<< orphan*/  FUNC15 (struct spear_smi*) ; 
 int /*<<< orphan*/  spear_smi_int_handler ; 
 int FUNC16 (struct platform_device*,struct device_node*) ; 
 int FUNC17 (struct platform_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct spear_smi_plat_data *pdata = NULL;
	struct spear_smi *dev;
	struct resource *smi_base;
	int irq, ret = 0;
	int i;

	if (np) {
		pdata = FUNC8(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
		if (!pdata) {
			ret = -ENOMEM;
			goto err;
		}
		pdev->dev.platform_data = pdata;
		ret = FUNC16(pdev, np);
		if (ret) {
			ret = -ENODEV;
			FUNC4(&pdev->dev, "no platform data\n");
			goto err;
		}
	} else {
		pdata = FUNC5(&pdev->dev);
		if (!pdata) {
			ret = -ENODEV;
			FUNC4(&pdev->dev, "no platform data\n");
			goto err;
		}
	}

	irq = FUNC12(pdev, 0);
	if (irq < 0) {
		ret = -ENODEV;
		FUNC4(&pdev->dev, "invalid smi irq\n");
		goto err;
	}

	dev = FUNC8(&pdev->dev, sizeof(*dev), GFP_ATOMIC);
	if (!dev) {
		ret = -ENOMEM;
		goto err;
	}

	smi_base = FUNC13(pdev, IORESOURCE_MEM, 0);

	dev->io_base = FUNC7(&pdev->dev, smi_base);
	if (FUNC0(dev->io_base)) {
		ret = FUNC1(dev->io_base);
		goto err;
	}

	dev->pdev = pdev;
	dev->clk_rate = pdata->clk_rate;

	if (dev->clk_rate > SMI_MAX_CLOCK_FREQ)
		dev->clk_rate = SMI_MAX_CLOCK_FREQ;

	dev->num_flashes = pdata->num_flashes;

	if (dev->num_flashes > MAX_NUM_FLASH_CHIP) {
		FUNC4(&pdev->dev, "exceeding max number of flashes\n");
		dev->num_flashes = MAX_NUM_FLASH_CHIP;
	}

	dev->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC0(dev->clk)) {
		ret = FUNC1(dev->clk);
		goto err;
	}

	ret = FUNC3(dev->clk);
	if (ret)
		goto err;

	ret = FUNC9(&pdev->dev, irq, spear_smi_int_handler, 0,
			       pdev->name, dev);
	if (ret) {
		FUNC4(&dev->pdev->dev, "SMI IRQ allocation failed\n");
		goto err_irq;
	}

	FUNC11(&dev->lock);
	FUNC10(&dev->cmd_complete);
	FUNC15(dev);
	FUNC14(pdev, dev);

	/* loop for each serial nor-flash which is connected to smi */
	for (i = 0; i < dev->num_flashes; i++) {
		ret = FUNC17(pdev, i, pdata->np[i]);
		if (ret) {
			FUNC4(&dev->pdev->dev, "bank setup failed\n");
			goto err_irq;
		}
	}

	return 0;

err_irq:
	FUNC2(dev->clk);
err:
	return ret;
}