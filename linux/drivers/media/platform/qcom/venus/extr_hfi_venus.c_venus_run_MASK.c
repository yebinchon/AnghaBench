#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int da; } ;
struct TYPE_6__ {int da; } ;
struct venus_hfi_device {TYPE_1__ sfr; TYPE_3__ ifaceq_table; TYPE_2__* core; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_CS_SCIACMDARG1 ; 
 int /*<<< orphan*/  CPU_CS_SCIACMDARG2 ; 
 int /*<<< orphan*/  SFR_ADDR ; 
 int SHARED_QSIZE ; 
 int /*<<< orphan*/  UC_REGION_ADDR ; 
 int /*<<< orphan*/  UC_REGION_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct venus_hfi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct venus_hfi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct venus_hfi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct venus_hfi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct venus_hfi_device *hdev)
{
	struct device *dev = hdev->core->dev;
	int ret;

	/*
	 * Re-program all of the registers that get reset as a result of
	 * regulator_disable() and _enable()
	 */
	FUNC3(hdev);

	FUNC4(hdev, UC_REGION_ADDR, hdev->ifaceq_table.da);
	FUNC4(hdev, UC_REGION_SIZE, SHARED_QSIZE);
	FUNC4(hdev, CPU_CS_SCIACMDARG2, hdev->ifaceq_table.da);
	FUNC4(hdev, CPU_CS_SCIACMDARG1, 0x01);
	if (hdev->sfr.da)
		FUNC4(hdev, SFR_ADDR, hdev->sfr.da);

	ret = FUNC1(hdev);
	if (ret) {
		FUNC0(dev, "failed to reset venus core\n");
		return ret;
	}

	FUNC2(hdev);

	return 0;
}