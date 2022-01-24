#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qlcnic_adapter {scalar_t__ is_up; int /*<<< orphan*/  state; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NETDEV_UP ; 
 scalar_t__ QLCNIC_ADAPTER_UP_MAGIC ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC10(struct qlcnic_adapter *adapter)
{
	int err = 0;
	struct net_device *netdev = adapter->netdev;

	if (FUNC9(__QLCNIC_RESETTING, &adapter->state))
		return -EBUSY;

	if (adapter->is_up == QLCNIC_ADAPTER_UP_MAGIC) {

		FUNC4(netdev);

		if (FUNC5(netdev))
			FUNC0(adapter, netdev);

		FUNC7(adapter);

		if (FUNC5(netdev)) {
			err = FUNC6(adapter);
			if (!err) {
				FUNC1(adapter, netdev);
				FUNC8(netdev, NETDEV_UP);
			}
		}

		FUNC3(netdev);
	}

	FUNC2(__QLCNIC_RESETTING, &adapter->state);
	return err;
}