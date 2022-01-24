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
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; scalar_t__ d3cold_delay; int /*<<< orphan*/  irq; int /*<<< orphan*/ * resource; } ;
struct intel_lpss_platform_info {int /*<<< orphan*/  irq; int /*<<< orphan*/ * mem; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct intel_lpss_platform_info* FUNC0 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct intel_lpss_platform_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev,
				const struct pci_device_id *id)
{
	struct intel_lpss_platform_info *info;
	int ret;

	ret = FUNC4(pdev);
	if (ret)
		return ret;

	info = FUNC0(&pdev->dev, (void *)id->driver_data, sizeof(*info),
			    GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->mem = &pdev->resource[0];
	info->irq = pdev->irq;

	pdev->d3cold_delay = 0;

	/* Probably it is enough to set this for iDMA capable devices only */
	FUNC2(pdev);
	FUNC3(pdev);

	ret = FUNC1(&pdev->dev, info);
	if (ret)
		return ret;

	FUNC6(&pdev->dev);
	FUNC5(&pdev->dev);

	return 0;
}