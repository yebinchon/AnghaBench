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
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long ACPI_STA_DEVICE_ENABLED ; 
 unsigned long long ACPI_STA_DEVICE_FUNCTIONING ; 
 unsigned long long ACPI_STA_DEVICE_PRESENT ; 
 unsigned long long ACPI_STA_DEVICE_UI ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 

__attribute__((used)) static int FUNC2(struct acpi_device *device)
{
	unsigned long long sta;
	acpi_status status;

	status = FUNC1(device->handle, "_STA", NULL, &sta);
	if (FUNC0(status))
		return -ENODEV;

	if (!((sta & ACPI_STA_DEVICE_PRESENT) &&
	      (sta & ACPI_STA_DEVICE_ENABLED) &&
	      (sta & ACPI_STA_DEVICE_UI) &&
	      (sta & ACPI_STA_DEVICE_FUNCTIONING)))
		return -ENODEV;

	return 0;
}