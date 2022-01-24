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
struct venus_hfi_device {int suspended; int /*<<< orphan*/  lock; int /*<<< orphan*/  power_enabled; } ;
struct venus_core {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct venus_hfi_device*,int,int,int,int) ; 
 struct venus_hfi_device* FUNC4 (struct venus_core*) ; 
 int /*<<< orphan*/  venus_cpu_and_video_core_idle ; 
 int /*<<< orphan*/  venus_cpu_idle_and_pc_ready ; 
 int FUNC5 (struct venus_hfi_device*) ; 
 int FUNC6 (struct venus_hfi_device*) ; 
 int FUNC7 (struct venus_hfi_device*,int) ; 

__attribute__((used)) static int FUNC8(struct venus_core *core)
{
	struct venus_hfi_device *hdev = FUNC4(core);
	struct device *dev = core->dev;
	bool val;
	int ret;

	if (!hdev->power_enabled || hdev->suspended)
		return 0;

	FUNC1(&hdev->lock);
	ret = FUNC5(hdev);
	FUNC2(&hdev->lock);

	if (!ret) {
		FUNC0(dev, "bad state, cannot suspend\n");
		return -EINVAL;
	}

	/*
	 * Power collapse sequence for Venus 3xx and 4xx versions:
	 * 1. Check for ARM9 and video core to be idle by checking WFI bit
	 *    (bit 0) in CPU status register and by checking Idle (bit 30) in
	 *    Control status register for video core.
	 * 2. Send a command to prepare for power collapse.
	 * 3. Check for WFI and PC_READY bits.
	 */
	ret = FUNC3(venus_cpu_and_video_core_idle, hdev, val, val,
				 1500, 100 * 1500);
	if (ret)
		return ret;

	ret = FUNC7(hdev, false);
	if (ret) {
		FUNC0(dev, "prepare for power collapse fail (%d)\n", ret);
		return ret;
	}

	ret = FUNC3(venus_cpu_idle_and_pc_ready, hdev, val, val,
				 1500, 100 * 1500);
	if (ret)
		return ret;

	FUNC1(&hdev->lock);

	ret = FUNC6(hdev);
	if (ret) {
		FUNC0(dev, "venus_power_off (%d)\n", ret);
		FUNC2(&hdev->lock);
		return ret;
	}

	hdev->suspended = true;

	FUNC2(&hdev->lock);

	return 0;
}