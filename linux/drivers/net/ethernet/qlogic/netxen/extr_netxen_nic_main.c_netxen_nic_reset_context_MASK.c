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
struct netxen_adapter {scalar_t__ is_up; int /*<<< orphan*/  state; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ NETXEN_ADAPTER_UP_MAGIC ; 
 int /*<<< orphan*/  __NX_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct netxen_adapter*,struct net_device*) ; 
 int FUNC1 (struct netxen_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int FUNC6 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct netxen_adapter*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC9(struct netxen_adapter *adapter)
{
	int err = 0;
	struct net_device *netdev = adapter->netdev;

	if (FUNC8(__NX_RESETTING, &adapter->state))
		return -EBUSY;

	if (adapter->is_up == NETXEN_ADAPTER_UP_MAGIC) {

		FUNC4(netdev);

		if (FUNC5(netdev))
			FUNC0(adapter, netdev);

		FUNC7(adapter);

		if (FUNC5(netdev)) {
			err = FUNC6(adapter);
			if (!err)
				err = FUNC1(adapter, netdev);

			if (err)
				goto done;
		}

		FUNC3(netdev);
	}

done:
	FUNC2(__NX_RESETTING, &adapter->state);
	return err;
}