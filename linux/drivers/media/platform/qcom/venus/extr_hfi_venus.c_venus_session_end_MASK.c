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
struct venus_inst {int /*<<< orphan*/  core; } ;
struct venus_hfi_device {TYPE_1__* core; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI_CMD_SYS_SESSION_END ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct venus_hfi_device* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ venus_fw_coverage ; 
 int FUNC2 (struct venus_inst*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct venus_hfi_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct venus_inst *inst)
{
	struct venus_hfi_device *hdev = FUNC1(inst->core);
	struct device *dev = hdev->core->dev;

	if (venus_fw_coverage) {
		if (FUNC3(hdev, venus_fw_coverage))
			FUNC0(dev, "fw coverage msg ON failed\n");
	}

	return FUNC2(inst, HFI_CMD_SYS_SESSION_END);
}