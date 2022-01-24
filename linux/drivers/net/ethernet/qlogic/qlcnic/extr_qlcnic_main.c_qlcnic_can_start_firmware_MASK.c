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
typedef  int u8 ;
typedef  int u32 ;
struct qlcnic_adapter {int dev_init_timeo; int portnum; TYPE_1__* pdev; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  QLCNIC_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLCNIC_CRB_DRV_ACTIVE ; 
 int /*<<< orphan*/  QLCNIC_CRB_DRV_IDC_VER ; 
 int /*<<< orphan*/  QLCNIC_CRB_DRV_STATE ; 
#define  QLCNIC_DEV_COLD 134 
#define  QLCNIC_DEV_FAILED 133 
#define  QLCNIC_DEV_INITIALIZING 132 
#define  QLCNIC_DEV_NEED_QUISCENT 131 
#define  QLCNIC_DEV_NEED_RESET 130 
#define  QLCNIC_DEV_QUISCENT 129 
#define  QLCNIC_DEV_READY 128 
 int QLCNIC_DRV_IDC_VER ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __QLCNIC_START_FW ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct qlcnic_adapter*) ; 
 int FUNC11 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(struct qlcnic_adapter *adapter)
{
	u32 val, prev_state;
	u8 dev_init_timeo = adapter->dev_init_timeo;
	u8 portnum = adapter->portnum;
	u8 ret;

	if (FUNC13(__QLCNIC_START_FW, &adapter->state))
		return 1;

	if (FUNC9(adapter))
		return -1;

	val = FUNC5(adapter, QLCNIC_CRB_DRV_ACTIVE);
	if (!(val & (1 << (portnum * 4)))) {
		FUNC3(val, portnum);
		FUNC6(adapter, QLCNIC_CRB_DRV_ACTIVE, val);
	}

	prev_state = FUNC5(adapter, QLCNIC_CRB_DEV_STATE);
	FUNC0(adapter, HW, "Device state = %u\n", prev_state);

	switch (prev_state) {
	case QLCNIC_DEV_COLD:
		FUNC6(adapter, QLCNIC_CRB_DEV_STATE,
				    QLCNIC_DEV_INITIALIZING);
		FUNC6(adapter, QLCNIC_CRB_DRV_IDC_VER,
				    QLCNIC_DRV_IDC_VER);
		FUNC12(adapter, 0);
		FUNC10(adapter);
		return 1;

	case QLCNIC_DEV_READY:
		ret = FUNC11(adapter);
		FUNC10(adapter);
		return ret;

	case QLCNIC_DEV_NEED_RESET:
		val = FUNC5(adapter, QLCNIC_CRB_DRV_STATE);
		FUNC4(val, portnum);
		FUNC6(adapter, QLCNIC_CRB_DRV_STATE, val);
		break;

	case QLCNIC_DEV_NEED_QUISCENT:
		val = FUNC5(adapter, QLCNIC_CRB_DRV_STATE);
		FUNC2(val, portnum);
		FUNC6(adapter, QLCNIC_CRB_DRV_STATE, val);
		break;

	case QLCNIC_DEV_FAILED:
		FUNC7(&adapter->pdev->dev, "Device in failed state.\n");
		FUNC10(adapter);
		return -1;

	case QLCNIC_DEV_INITIALIZING:
	case QLCNIC_DEV_QUISCENT:
		break;
	}

	FUNC10(adapter);

	do {
		FUNC8(1000);
		prev_state = FUNC5(adapter, QLCNIC_CRB_DEV_STATE);

		if (prev_state == QLCNIC_DEV_QUISCENT)
			continue;
	} while ((prev_state != QLCNIC_DEV_READY) && --dev_init_timeo);

	if (!dev_init_timeo) {
		FUNC7(&adapter->pdev->dev,
			"Waiting for device to initialize timeout\n");
		return -1;
	}

	if (FUNC9(adapter))
		return -1;

	val = FUNC5(adapter, QLCNIC_CRB_DRV_STATE);
	FUNC1(val, portnum);
	FUNC6(adapter, QLCNIC_CRB_DRV_STATE, val);

	ret = FUNC11(adapter);
	FUNC10(adapter);

	return ret;
}