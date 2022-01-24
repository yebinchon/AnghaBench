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
struct platform_device {int dummy; } ;
struct acpi_device {struct platform_device* driver_data; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int /*<<< orphan*/  METHOD_NAME__CRS ; 
 scalar_t__ FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fjes_get_acpi_resource ; 
 int /*<<< orphan*/  fjes_resource ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct acpi_device *device)
{
	struct platform_device *plat_dev;
	acpi_status status;

	if (!FUNC4(device))
		return -ENODEV;

	if (FUNC2(device))
		return -ENODEV;

	status = FUNC3(device->handle, METHOD_NAME__CRS,
				     fjes_get_acpi_resource, fjes_resource);
	if (FUNC0(status))
		return -ENODEV;

	/* create platform_device */
	plat_dev = FUNC5(DRV_NAME, 0, fjes_resource,
						   FUNC1(fjes_resource));
	device->driver_data = plat_dev;

	return 0;
}