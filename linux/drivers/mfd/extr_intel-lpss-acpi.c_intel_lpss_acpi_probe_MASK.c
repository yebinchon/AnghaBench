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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct intel_lpss_platform_info {int /*<<< orphan*/  irq; int /*<<< orphan*/  mem; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct acpi_device_id* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct intel_lpss_platform_info* FUNC1 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_lpss_acpi_ids ; 
 int FUNC2 (int /*<<< orphan*/ *,struct intel_lpss_platform_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct intel_lpss_platform_info *info;
	const struct acpi_device_id *id;

	id = FUNC0(intel_lpss_acpi_ids, &pdev->dev);
	if (!id)
		return -ENODEV;

	info = FUNC1(&pdev->dev, (void *)id->driver_data, sizeof(*info),
			    GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->mem = FUNC4(pdev, IORESOURCE_MEM, 0);
	info->irq = FUNC3(pdev, 0);

	FUNC6(&pdev->dev);
	FUNC5(&pdev->dev);

	return FUNC2(&pdev->dev, info);
}