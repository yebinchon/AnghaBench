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
struct qlcnic_adapter {scalar_t__ tx_timeo_cnt; int need_fw_reset; TYPE_1__* ahw; int /*<<< orphan*/  state; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int reset_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_FORCE_FW_DUMP_KEY ; 
 scalar_t__ QLCNIC_MAX_TX_TIMEOUTS ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct net_device *netdev)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);

	if (FUNC7(__QLCNIC_RESETTING, &adapter->state))
		return;

	FUNC6(adapter);

	if (++adapter->tx_timeo_cnt >= QLCNIC_MAX_TX_TIMEOUTS ||
	    FUNC2(adapter->ahw)) {
		FUNC0(netdev, "Tx timeout, reset the adapter.\n");
		if (FUNC3(adapter))
			adapter->need_fw_reset = 1;
		else if (FUNC4(adapter))
			FUNC5(adapter,
						      QLCNIC_FORCE_FW_DUMP_KEY);
	} else {
		FUNC0(netdev, "Tx timeout, reset adapter context.\n");
		adapter->ahw->reset_context = 1;
	}
}