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
struct netxen_adapter {scalar_t__ portnum; int /*<<< orphan*/  state; int /*<<< orphan*/  tx_timeout_task; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __NX_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct netxen_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct netxen_adapter*) ; 

__attribute__((used)) static void FUNC9(struct netxen_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	FUNC2(netdev);

	FUNC4(adapter);

	if (FUNC3(netdev))
		FUNC7(adapter, netdev);

	FUNC0(&adapter->tx_timeout_task);

	FUNC6(adapter);

	if (adapter->portnum == 0)
		FUNC5(adapter);

	FUNC8(adapter);

	FUNC1(__NX_RESETTING, &adapter->state);
}