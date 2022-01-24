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
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ autoneg; scalar_t__ rx_pause; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int physical_port; scalar_t__ port_type; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 scalar_t__ QLCNIC_GBE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QLCNIC_NIU_GB_PAUSE_CTL ; 
 int QLCNIC_NIU_MAX_GBE_PORTS ; 
 int QLCNIC_NIU_MAX_XG_PORTS ; 
 int /*<<< orphan*/  QLCNIC_NIU_XG_PAUSE_CTL ; 
 scalar_t__ QLCNIC_XGBE ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct qlcnic_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int FUNC6 (struct qlcnic_adapter*,struct ethtool_pauseparam*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(struct net_device *netdev,
			  struct ethtool_pauseparam *pause)
{
	struct qlcnic_adapter *adapter = FUNC4(netdev);
	int port = adapter->ahw->physical_port;
	int err = 0;
	__u32 val;

	if (FUNC5(adapter))
		return FUNC6(adapter, pause);

	/* read mode */
	if (adapter->ahw->port_type == QLCNIC_GBE) {
		if ((port < 0) || (port > QLCNIC_NIU_MAX_GBE_PORTS))
			return -EIO;
		/* set flow control */
		val = FUNC1(adapter, FUNC0(port), &err);
		if (err == -EIO)
			return err;

		if (pause->rx_pause)
			FUNC7(val);
		else
			FUNC16(val);

		FUNC2(adapter, FUNC0(port),
				val);
		FUNC2(adapter, FUNC0(port), val);
		/* set autoneg */
		val = FUNC1(adapter, QLCNIC_NIU_GB_PAUSE_CTL, &err);
		if (err == -EIO)
			return err;
		switch (port) {
		case 0:
			if (pause->tx_pause)
				FUNC12(val);
			else
				FUNC8(val);
			break;
		case 1:
			if (pause->tx_pause)
				FUNC13(val);
			else
				FUNC9(val);
			break;
		case 2:
			if (pause->tx_pause)
				FUNC14(val);
			else
				FUNC10(val);
			break;
		case 3:
		default:
			if (pause->tx_pause)
				FUNC15(val);
			else
				FUNC11(val);
			break;
		}
		FUNC2(adapter, QLCNIC_NIU_GB_PAUSE_CTL, val);
	} else if (adapter->ahw->port_type == QLCNIC_XGBE) {
		if (!pause->rx_pause || pause->autoneg)
			return -EOPNOTSUPP;

		if ((port < 0) || (port > QLCNIC_NIU_MAX_XG_PORTS))
			return -EIO;

		val = FUNC1(adapter, QLCNIC_NIU_XG_PAUSE_CTL, &err);
		if (err == -EIO)
			return err;
		if (port == 0) {
			if (pause->tx_pause)
				FUNC19(val);
			else
				FUNC17(val);
		} else {
			if (pause->tx_pause)
				FUNC20(val);
			else
				FUNC18(val);
		}
		FUNC2(adapter, QLCNIC_NIU_XG_PAUSE_CTL, val);
	} else {
		FUNC3(&netdev->dev, "Unknown board type: %x\n",
				adapter->ahw->port_type);
	}
	return 0;
}