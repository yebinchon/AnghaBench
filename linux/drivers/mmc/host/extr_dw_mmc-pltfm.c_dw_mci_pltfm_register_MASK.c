#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_3__ {int /*<<< orphan*/  platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dw_mci_drv_data {int dummy; } ;
struct dw_mci {scalar_t__ irq; int /*<<< orphan*/  phy_regs; int /*<<< orphan*/  regs; int /*<<< orphan*/  pdata; scalar_t__ irq_flags; TYPE_1__* dev; struct dw_mci_drv_data const* drv_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct resource*) ; 
 struct dw_mci* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dw_mci*) ; 
 scalar_t__ FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct dw_mci*) ; 

int FUNC8(struct platform_device *pdev,
			  const struct dw_mci_drv_data *drv_data)
{
	struct dw_mci *host;
	struct resource	*regs;

	host = FUNC3(&pdev->dev, sizeof(struct dw_mci), GFP_KERNEL);
	if (!host)
		return -ENOMEM;

	host->irq = FUNC5(pdev, 0);
	if (host->irq < 0)
		return host->irq;

	host->drv_data = drv_data;
	host->dev = &pdev->dev;
	host->irq_flags = 0;
	host->pdata = pdev->dev.platform_data;

	regs = FUNC6(pdev, IORESOURCE_MEM, 0);
	host->regs = FUNC2(&pdev->dev, regs);
	if (FUNC0(host->regs))
		return FUNC1(host->regs);

	/* Get registers' physical base address */
	host->phy_regs = regs->start;

	FUNC7(pdev, host);
	return FUNC4(host);
}