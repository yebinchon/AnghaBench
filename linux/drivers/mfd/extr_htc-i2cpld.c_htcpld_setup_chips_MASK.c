#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct htcpld_data {int nchips; scalar_t__ chained_irq; TYPE_2__* chip; } ;
struct htcpld_core_platform_data {int num_chip; TYPE_1__* chip; } ;
struct htcpld_chip {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  set_val_work; int /*<<< orphan*/  nirqs; int /*<<< orphan*/  irq_start; struct device* dev; scalar_t__ cache_in; int /*<<< orphan*/  cache_out; int /*<<< orphan*/  reset; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  num_irqs; int /*<<< orphan*/  irq_base; int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct htcpld_core_platform_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  htcpld_chip_set_ni ; 
 int FUNC4 (struct platform_device*,int) ; 
 int FUNC5 (struct platform_device*,int) ; 
 int FUNC6 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int) ; 
 struct htcpld_data* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct htcpld_data *htcpld;
	struct device *dev = &pdev->dev;
	struct htcpld_core_platform_data *pdata;
	int i;

	/* Get the platform and driver data */
	pdata = FUNC1(dev);
	htcpld = FUNC8(pdev);

	/* Setup each chip's output GPIOs */
	htcpld->nchips = pdata->num_chip;
	htcpld->chip = FUNC3(dev,
				    htcpld->nchips,
				    sizeof(struct htcpld_chip),
				    GFP_KERNEL);
	if (!htcpld->chip)
		return -ENOMEM;

	/* Add the chips as best we can */
	for (i = 0; i < htcpld->nchips; i++) {
		int ret;

		/* Setup the HTCPLD chips */
		htcpld->chip[i].reset = pdata->chip[i].reset;
		htcpld->chip[i].cache_out = pdata->chip[i].reset;
		htcpld->chip[i].cache_in = 0;
		htcpld->chip[i].dev = dev;
		htcpld->chip[i].irq_start = pdata->chip[i].irq_base;
		htcpld->chip[i].nirqs = pdata->chip[i].num_irqs;

		FUNC0(&(htcpld->chip[i].set_val_work), &htcpld_chip_set_ni);
		FUNC9(&(htcpld->chip[i].lock));

		/* Setup the interrupts for the chip */
		if (htcpld->chained_irq) {
			ret = FUNC6(pdev, i);
			if (ret)
				continue;
		}

		/* Register the chip with I2C */
		ret = FUNC5(pdev, i);
		if (ret)
			continue;


		/* Register the chips with the GPIO subsystem */
		ret = FUNC4(pdev, i);
		if (ret) {
			/* Unregister the chip from i2c and continue */
			FUNC7(pdev, i);
			continue;
		}

		FUNC2(dev, "Registered chip at 0x%x\n", pdata->chip[i].addr);
	}

	return 0;
}