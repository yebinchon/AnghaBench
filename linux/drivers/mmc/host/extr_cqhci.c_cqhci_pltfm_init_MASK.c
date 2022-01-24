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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct cqhci_host {int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct cqhci_host* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cqhci_host* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 

struct cqhci_host *FUNC7(struct platform_device *pdev)
{
	struct cqhci_host *cq_host;
	struct resource *cqhci_memres = NULL;

	/* check and setup CMDQ interface */
	cqhci_memres = FUNC5(pdev, IORESOURCE_MEM,
						   "cqhci_mem");
	if (!cqhci_memres) {
		FUNC1(&pdev->dev, "CMDQ not supported\n");
		return FUNC0(-EINVAL);
	}

	cq_host = FUNC4(&pdev->dev, sizeof(*cq_host), GFP_KERNEL);
	if (!cq_host)
		return FUNC0(-ENOMEM);
	cq_host->mmio = FUNC3(&pdev->dev,
				     cqhci_memres->start,
				     FUNC6(cqhci_memres));
	if (!cq_host->mmio) {
		FUNC2(&pdev->dev, "failed to remap cqhci regs\n");
		return FUNC0(-EBUSY);
	}
	FUNC1(&pdev->dev, "CMDQ ioremap: done\n");

	return cq_host;
}