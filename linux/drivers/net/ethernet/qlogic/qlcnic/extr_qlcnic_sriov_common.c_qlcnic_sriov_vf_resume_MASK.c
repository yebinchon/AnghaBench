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
struct qlcnic_adapter {struct net_device* netdev; TYPE_1__* ahw; } ;
struct qlc_83xx_idc {int /*<<< orphan*/  delay; int /*<<< orphan*/  status; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct qlc_83xx_idc idc; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_UP ; 
 int /*<<< orphan*/  QLCNIC_BC_CMD_CHANNEL_INIT ; 
 int /*<<< orphan*/  QLC_83XX_MODULE_LOADED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qlcnic_adapter*,int) ; 
 int FUNC6 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qlcnic_sriov_vf_poll_dev_state ; 
 int FUNC7 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct qlcnic_adapter *adapter)
{
	struct qlc_83xx_idc *idc = &adapter->ahw->idc;
	struct net_device *netdev = adapter->netdev;
	int err;

	FUNC8(QLC_83XX_MODULE_LOADED, &idc->status);
	FUNC2(adapter);
	err = FUNC5(adapter, 1);
	if (err)
		return err;

	err = FUNC6(adapter, QLCNIC_BC_CMD_CHANNEL_INIT);
	if (!err) {
		if (FUNC1(netdev)) {
			err = FUNC7(adapter, netdev);
			if (!err)
				FUNC3(netdev, NETDEV_UP);
		}
	}

	FUNC0(netdev);
	FUNC4(adapter, qlcnic_sriov_vf_poll_dev_state,
			     idc->delay);
	return err;
}