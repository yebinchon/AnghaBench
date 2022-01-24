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
typedef  int u32 ;
struct venus_hfi_device {int suspended; scalar_t__ last_packet_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  power_enabled; } ;
struct venus_core {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_CS_SCIACMDARG0 ; 
 int CPU_CS_SCIACMDARG0_PC_READY ; 
 int EINVAL ; 
 scalar_t__ HFI_CMD_SYS_PC_PREP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct venus_hfi_device* FUNC3 (struct venus_core*) ; 
 int FUNC4 (struct venus_hfi_device*) ; 
 int FUNC5 (struct venus_hfi_device*) ; 
 int FUNC6 (struct venus_hfi_device*) ; 
 int FUNC7 (struct venus_hfi_device*,int) ; 
 int FUNC8 (struct venus_hfi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct venus_core *core)
{
	struct venus_hfi_device *hdev = FUNC3(core);
	struct device *dev = core->dev;
	u32 ctrl_status;
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

	ret = FUNC7(hdev, true);
	if (ret) {
		FUNC0(dev, "prepare for power collapse fail (%d)\n", ret);
		return ret;
	}

	FUNC1(&hdev->lock);

	if (hdev->last_packet_type != HFI_CMD_SYS_PC_PREP) {
		FUNC2(&hdev->lock);
		return -EINVAL;
	}

	ret = FUNC4(hdev);
	if (ret < 0 || !ret) {
		FUNC2(&hdev->lock);
		return -EINVAL;
	}

	ctrl_status = FUNC8(hdev, CPU_CS_SCIACMDARG0);
	if (!(ctrl_status & CPU_CS_SCIACMDARG0_PC_READY)) {
		FUNC2(&hdev->lock);
		return -EINVAL;
	}

	ret = FUNC6(hdev);
	if (ret) {
		FUNC2(&hdev->lock);
		return ret;
	}

	hdev->suspended = true;

	FUNC2(&hdev->lock);

	return 0;
}