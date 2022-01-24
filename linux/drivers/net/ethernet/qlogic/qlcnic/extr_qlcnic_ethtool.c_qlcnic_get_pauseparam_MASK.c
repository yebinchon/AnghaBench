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
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int physical_port; scalar_t__ port_type; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ QLCNIC_GBE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QLCNIC_NIU_GB_PAUSE_CTL ; 
 int QLCNIC_NIU_MAX_GBE_PORTS ; 
 int QLCNIC_NIU_MAX_XG_PORTS ; 
 int /*<<< orphan*/  QLCNIC_NIU_XG_PAUSE_CTL ; 
 scalar_t__ QLCNIC_XGBE ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct qlcnic_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,struct ethtool_pauseparam*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct net_device *netdev,
			  struct ethtool_pauseparam *pause)
{
	struct qlcnic_adapter *adapter = FUNC3(netdev);
	int port = adapter->ahw->physical_port;
	int err = 0;
	__u32 val;

	if (FUNC4(adapter)) {
		FUNC5(adapter, pause);
		return;
	}
	if (adapter->ahw->port_type == QLCNIC_GBE) {
		if ((port < 0) || (port > QLCNIC_NIU_MAX_GBE_PORTS))
			return;
		/* get flow control settings */
		val = FUNC1(adapter, FUNC0(port), &err);
		if (err == -EIO)
			return;
		pause->rx_pause = FUNC10(val);
		val = FUNC1(adapter, QLCNIC_NIU_GB_PAUSE_CTL, &err);
		if (err == -EIO)
			return;
		switch (port) {
		case 0:
			pause->tx_pause = !(FUNC6(val));
			break;
		case 1:
			pause->tx_pause = !(FUNC7(val));
			break;
		case 2:
			pause->tx_pause = !(FUNC8(val));
			break;
		case 3:
		default:
			pause->tx_pause = !(FUNC9(val));
			break;
		}
	} else if (adapter->ahw->port_type == QLCNIC_XGBE) {
		if ((port < 0) || (port > QLCNIC_NIU_MAX_XG_PORTS))
			return;
		pause->rx_pause = 1;
		val = FUNC1(adapter, QLCNIC_NIU_XG_PAUSE_CTL, &err);
		if (err == -EIO)
			return;
		if (port == 0)
			pause->tx_pause = !(FUNC11(val));
		else
			pause->tx_pause = !(FUNC12(val));
	} else {
		FUNC2(&netdev->dev, "Unknown board type: %x\n",
					adapter->ahw->port_type);
	}
}