#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct htcpld_data {scalar_t__ int_reset_gpio_lo; scalar_t__ int_reset_gpio_hi; int /*<<< orphan*/  chained_irq; } ;
struct htcpld_core_platform_data {scalar_t__ int_reset_gpio_lo; scalar_t__ int_reset_gpio_hi; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 struct htcpld_core_platform_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 struct htcpld_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  htcpld_handler ; 
 int FUNC7 (struct platform_device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct htcpld_data*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct htcpld_data*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct htcpld_data *htcpld;
	struct device *dev = &pdev->dev;
	struct htcpld_core_platform_data *pdata;
	struct resource *res;
	int ret = 0;

	if (!dev)
		return -ENODEV;

	pdata = FUNC0(dev);
	if (!pdata) {
		FUNC2(dev, "Platform data not found for htcpld core!\n");
		return -ENXIO;
	}

	htcpld = FUNC4(dev, sizeof(struct htcpld_data), GFP_KERNEL);
	if (!htcpld)
		return -ENOMEM;

	/* Find chained irq */
	res = FUNC8(pdev, IORESOURCE_IRQ, 0);
	if (res) {
		int flags;
		htcpld->chained_irq = res->start;

		/* Setup the chained interrupt handler */
		flags = IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING |
			IRQF_ONESHOT;
		ret = FUNC10(htcpld->chained_irq,
					   NULL, htcpld_handler,
					   flags, pdev->name, htcpld);
		if (ret) {
			FUNC2(dev, "Unable to setup chained irq handler: %d\n", ret);
			return ret;
		} else
			FUNC3(dev, 0);
	}

	/* Set the driver data */
	FUNC9(pdev, htcpld);

	/* Setup the htcpld chips */
	ret = FUNC7(pdev);
	if (ret)
		return ret;

	/* Request the GPIO(s) for the int reset and set them up */
	if (pdata->int_reset_gpio_hi) {
		ret = FUNC5(pdata->int_reset_gpio_hi, "htcpld-core");
		if (ret) {
			/*
			 * If it failed, that sucks, but we can probably
			 * continue on without it.
			 */
			FUNC2(dev, "Unable to request int_reset_gpio_hi -- interrupts may not work\n");
			htcpld->int_reset_gpio_hi = 0;
		} else {
			htcpld->int_reset_gpio_hi = pdata->int_reset_gpio_hi;
			FUNC6(htcpld->int_reset_gpio_hi, 1);
		}
	}

	if (pdata->int_reset_gpio_lo) {
		ret = FUNC5(pdata->int_reset_gpio_lo, "htcpld-core");
		if (ret) {
			/*
			 * If it failed, that sucks, but we can probably
			 * continue on without it.
			 */
			FUNC2(dev, "Unable to request int_reset_gpio_lo -- interrupts may not work\n");
			htcpld->int_reset_gpio_lo = 0;
		} else {
			htcpld->int_reset_gpio_lo = pdata->int_reset_gpio_lo;
			FUNC6(htcpld->int_reset_gpio_lo, 0);
		}
	}

	FUNC1(dev, "Initialized successfully\n");
	return 0;
}