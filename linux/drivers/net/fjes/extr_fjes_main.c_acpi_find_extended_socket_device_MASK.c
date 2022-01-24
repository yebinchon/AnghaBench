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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_MOTHERBOARD_RESOURCE_HID ; 
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 scalar_t__ FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC5(acpi_handle obj_handle, u32 level,
				 void *context, void **return_value)
{
	struct acpi_device *device;
	bool *found = context;
	int result;

	result = FUNC0(obj_handle, &device);
	if (result)
		return AE_OK;

	if (FUNC4(FUNC2(device), ACPI_MOTHERBOARD_RESOURCE_HID))
		return AE_OK;

	if (!FUNC3(device))
		return AE_OK;

	if (FUNC1(device))
		return AE_OK;

	*found = true;
	return AE_CTRL_TERMINATE;
}