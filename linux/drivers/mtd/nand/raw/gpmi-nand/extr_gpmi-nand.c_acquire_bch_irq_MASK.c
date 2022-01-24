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
struct platform_device {int dummy; } ;
struct gpmi_nand_data {int /*<<< orphan*/  dev; struct platform_device* pdev; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int ENODEV ; 
 char* GPMI_NAND_BCH_INTERRUPT_RES_NAME ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct gpmi_nand_data*) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC3(struct gpmi_nand_data *this, irq_handler_t irq_h)
{
	struct platform_device *pdev = this->pdev;
	const char *res_name = GPMI_NAND_BCH_INTERRUPT_RES_NAME;
	struct resource *r;
	int err;

	r = FUNC2(pdev, IORESOURCE_IRQ, res_name);
	if (!r) {
		FUNC0(this->dev, "Can't get resource for %s\n", res_name);
		return -ENODEV;
	}

	err = FUNC1(this->dev, r->start, irq_h, 0, res_name, this);
	if (err)
		FUNC0(this->dev, "error requesting BCH IRQ\n");

	return err;
}