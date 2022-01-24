#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct venus_hfi_device {TYPE_1__* core; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  venus_fw_debug ; 
 int /*<<< orphan*/  venus_fw_low_power_mode ; 
 int venus_sys_idle_indicator ; 
 int FUNC2 (struct venus_hfi_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct venus_hfi_device*,int) ; 
 int FUNC4 (struct venus_hfi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct venus_hfi_device *hdev)
{
	struct device *dev = hdev->core->dev;
	int ret;

	ret = FUNC2(hdev, venus_fw_debug);
	if (ret)
		FUNC1(dev, "setting fw debug msg ON failed (%d)\n", ret);

	/*
	 * Idle indicator is disabled by default on some 4xx firmware versions,
	 * enable it explicitly in order to make suspend functional by checking
	 * WFI (wait-for-interrupt) bit.
	 */
	if (FUNC0(hdev->core))
		venus_sys_idle_indicator = true;

	ret = FUNC3(hdev, venus_sys_idle_indicator);
	if (ret)
		FUNC1(dev, "setting idle response ON failed (%d)\n", ret);

	ret = FUNC4(hdev, venus_fw_low_power_mode);
	if (ret)
		FUNC1(dev, "setting hw power collapse ON failed (%d)\n",
			 ret);

	return ret;
}