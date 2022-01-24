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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct qlcnic_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  flags; scalar_t__ fw_fail_cnt; int /*<<< orphan*/  portnum; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLCNIC_CRB_DRV_ACTIVE ; 
 int /*<<< orphan*/  QLCNIC_CRB_DRV_STATE ; 
 int QLCNIC_DEV_COLD ; 
 int QLCNIC_DEV_FAILED ; 
 int /*<<< orphan*/  QLCNIC_FW_HANG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  __QLCNIC_START_FW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 

void FUNC8(struct qlcnic_adapter *adapter, u8 failed)
{
	u32  val;

	if (FUNC6(adapter))
		goto err;

	val = FUNC2(adapter, QLCNIC_CRB_DRV_ACTIVE);
	FUNC0(val, adapter->portnum);
	FUNC3(adapter, QLCNIC_CRB_DRV_ACTIVE, val);

	if (failed) {
		FUNC3(adapter, QLCNIC_CRB_DEV_STATE,
				    QLCNIC_DEV_FAILED);
		FUNC5(&adapter->pdev->dev,
				"Device state set to Failed. Please Reboot\n");
	} else if (!(val & 0x11111111))
		FUNC3(adapter, QLCNIC_CRB_DEV_STATE,
				    QLCNIC_DEV_COLD);

	val = FUNC2(adapter, QLCNIC_CRB_DRV_STATE);
	FUNC1(val, adapter->portnum);
	FUNC3(adapter, QLCNIC_CRB_DRV_STATE, val);

	FUNC7(adapter);
err:
	adapter->fw_fail_cnt = 0;
	adapter->flags &= ~QLCNIC_FW_HANG;
	FUNC4(__QLCNIC_START_FW, &adapter->state);
	FUNC4(__QLCNIC_RESETTING, &adapter->state);
}