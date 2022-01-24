#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {int need_fw_reset; scalar_t__ heartbit; scalar_t__ fw_fail_cnt; int /*<<< orphan*/  state; TYPE_2__* pdev; TYPE_1__ ahw; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AUTO_FW_RESET_ENABLED ; 
 scalar_t__ FW_FAIL_THRESH ; 
 scalar_t__ NETXEN_CRB_PEG_NET_0 ; 
 scalar_t__ NETXEN_CRB_PEG_NET_1 ; 
 scalar_t__ NETXEN_CRB_PEG_NET_2 ; 
 scalar_t__ NETXEN_CRB_PEG_NET_3 ; 
 scalar_t__ NETXEN_CRB_PEG_NET_4 ; 
 scalar_t__ NETXEN_PEG_ALIVE_COUNTER ; 
 scalar_t__ NETXEN_PEG_HALT_STATUS1 ; 
 scalar_t__ NETXEN_PEG_HALT_STATUS2 ; 
 scalar_t__ FUNC0 (struct netxen_adapter*,scalar_t__) ; 
 scalar_t__ NX_CRB_DEV_STATE ; 
 scalar_t__ NX_DEV_FAILED ; 
 scalar_t__ NX_DEV_NEED_AER ; 
 scalar_t__ NX_DEV_NEED_RESET ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __NX_FW_ATTACHED ; 
 int /*<<< orphan*/  __NX_RESETTING ; 
 scalar_t__ auto_fw_reset ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  netxen_detach_work ; 
 scalar_t__ FUNC5 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct netxen_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct netxen_adapter *adapter)
{
	u32 state, heartbit;
	u32 peg_status;
	struct net_device *netdev = adapter->netdev;

	state = FUNC0(adapter, NX_CRB_DEV_STATE);
	if (state == NX_DEV_NEED_AER)
		return 0;

	if (FUNC5(adapter))
		goto detach;

	if (adapter->need_fw_reset) {
		if (FUNC7(adapter))
			return 0;
		goto detach;
	}

	/* NX_DEV_NEED_RESET, this state can be marked in two cases
	 * 1. Tx timeout 2. Fw hang
	 * Send request to destroy context in case of tx timeout only
	 * and doesn't required in case of Fw hang
	 */
	if (state == NX_DEV_NEED_RESET || state == NX_DEV_FAILED) {
		adapter->need_fw_reset = 1;
		if (FUNC2(adapter->ahw.revision_id))
			goto detach;
	}

	if (FUNC2(adapter->ahw.revision_id))
		return 0;

	heartbit = FUNC0(adapter, NETXEN_PEG_ALIVE_COUNTER);
	if (heartbit != adapter->heartbit) {
		adapter->heartbit = heartbit;
		adapter->fw_fail_cnt = 0;
		if (adapter->need_fw_reset)
			goto detach;
		return 0;
	}

	if (++adapter->fw_fail_cnt < FW_FAIL_THRESH)
		return 0;

	if (FUNC7(adapter))
		return 0;

	FUNC3(__NX_FW_ATTACHED, &adapter->state);

	FUNC4(&netdev->dev, "firmware hang detected\n");
	peg_status = FUNC0(adapter, NETXEN_PEG_HALT_STATUS1);
	FUNC4(&adapter->pdev->dev, "Dumping hw/fw registers\n"
			"PEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\n"
			"PEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\n"
			"PEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\n"
			"PEG_NET_4_PC: 0x%x\n",
			peg_status,
			FUNC0(adapter, NETXEN_PEG_HALT_STATUS2),
			FUNC0(adapter, NETXEN_CRB_PEG_NET_0 + 0x3c),
			FUNC0(adapter, NETXEN_CRB_PEG_NET_1 + 0x3c),
			FUNC0(adapter, NETXEN_CRB_PEG_NET_2 + 0x3c),
			FUNC0(adapter, NETXEN_CRB_PEG_NET_3 + 0x3c),
			FUNC0(adapter, NETXEN_CRB_PEG_NET_4 + 0x3c));
	if (FUNC1(peg_status) == 0x67)
		FUNC4(&adapter->pdev->dev,
			"Firmware aborted with error code 0x00006700. "
				"Device is being reset.\n");
detach:
	if ((auto_fw_reset == AUTO_FW_RESET_ENABLED) &&
			!FUNC8(__NX_RESETTING, &adapter->state))
		FUNC6(adapter, netxen_detach_work, 0);
	return 1;
}