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
struct net_device {int dummy; } ;
struct lan743x_adapter {int /*<<< orphan*/ * rx; int /*<<< orphan*/ * tx; } ;

/* Variables and functions */
 int LAN743X_USED_RX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct lan743x_adapter* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev)
{
	struct lan743x_adapter *adapter = FUNC6(netdev);
	int index;

	FUNC5(&adapter->tx[0]);

	for (index = 0; index < LAN743X_USED_RX_CHANNELS; index++)
		FUNC4(&adapter->rx[index]);

	FUNC3(adapter);

	FUNC2(adapter);

	FUNC1(adapter);

	FUNC0(adapter);

	return 0;
}