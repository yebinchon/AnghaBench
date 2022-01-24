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
struct netxen_adapter {int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  state; } ;
struct net_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  __NX_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct netxen_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev)
{
	struct netxen_adapter *adapter = FUNC1(netdev);

	if (FUNC3(__NX_RESETTING, &adapter->state))
		return;

	FUNC0(&netdev->dev, "transmit timeout, resetting.\n");
	FUNC2(&adapter->tx_timeout_task);
}