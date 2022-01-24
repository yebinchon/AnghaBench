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
struct qlcnic_adapter {int /*<<< orphan*/  state; TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_2__ {scalar_t__ op_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
#define  ETHTOOL_ID_ACTIVE 129 
#define  ETHTOOL_ID_INACTIVE 128 
 scalar_t__ QLCNIC_NON_PRIV_FUNC ; 
 int /*<<< orphan*/  __QLCNIC_LED_ENABLE ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int FUNC4 (struct qlcnic_adapter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int  FUNC7(struct net_device *netdev,
			 enum ethtool_phys_id_state state)
{
	struct qlcnic_adapter *adapter = FUNC2(netdev);
	int err = -EIO, active = 1;

	if (adapter->ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
		FUNC3(netdev,
			    "LED test is not supported in non-privileged mode\n");
		return -EOPNOTSUPP;
	}

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		if (FUNC5(__QLCNIC_LED_ENABLE, &adapter->state))
			return -EBUSY;

		if (FUNC6(__QLCNIC_RESETTING, &adapter->state))
			break;

		err = FUNC4(adapter, active, 0);
		if (err)
			FUNC1(netdev, "Failed to set LED blink state\n");
		break;
	case ETHTOOL_ID_INACTIVE:
		active = 0;

		if (FUNC6(__QLCNIC_RESETTING, &adapter->state))
			break;

		err = FUNC4(adapter, active, 0);
		if (err)
			FUNC1(netdev, "Failed to reset LED blink state\n");
		break;

	default:
		return -EINVAL;
	}

	if (!active || err)
		FUNC0(__QLCNIC_LED_ENABLE, &adapter->state);

	return err;
}