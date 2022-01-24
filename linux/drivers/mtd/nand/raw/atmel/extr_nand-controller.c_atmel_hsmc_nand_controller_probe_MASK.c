#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct atmel_nand_controller_caps {scalar_t__ legacy_of_bindings; } ;
struct TYPE_4__ {int /*<<< orphan*/  smc; } ;
struct atmel_hsmc_nand_controller {TYPE_1__ base; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_HSMC_NFC_CFG ; 
 int ATMEL_HSMC_NFC_CFG_DTO_MAX ; 
 int /*<<< orphan*/  ATMEL_HSMC_NFC_IDR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC0 (struct atmel_hsmc_nand_controller*) ; 
 int FUNC1 (struct atmel_hsmc_nand_controller*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,struct platform_device*,struct atmel_nand_controller_caps const*) ; 
 int /*<<< orphan*/  atmel_nfc_interrupt ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 struct atmel_hsmc_nand_controller* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct atmel_hsmc_nand_controller*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev,
				const struct atmel_nand_controller_caps *caps)
{
	struct device *dev = &pdev->dev;
	struct atmel_hsmc_nand_controller *nc;
	int ret;

	nc = FUNC6(dev, sizeof(*nc), GFP_KERNEL);
	if (!nc)
		return -ENOMEM;

	ret = FUNC4(&nc->base, pdev, caps);
	if (ret)
		return ret;

	if (caps->legacy_of_bindings)
		ret = FUNC1(nc);
	else
		ret = FUNC0(nc);

	if (ret)
		return ret;

	/* Make sure all irqs are masked before registering our IRQ handler. */
	FUNC8(nc->base.smc, ATMEL_HSMC_NFC_IDR, 0xffffffff);
	ret = FUNC7(dev, nc->irq, atmel_nfc_interrupt,
			       IRQF_SHARED, "nfc", nc);
	if (ret) {
		FUNC5(dev,
			"Could not get register NFC interrupt handler (err = %d)\n",
			ret);
		goto err;
	}

	/* Initial NFC configuration. */
	FUNC8(nc->base.smc, ATMEL_HSMC_NFC_CFG,
		     ATMEL_HSMC_NFC_CFG_DTO_MAX);

	ret = FUNC3(&nc->base);
	if (ret)
		goto err;

	return 0;

err:
	FUNC2(&nc->base);

	return ret;
}