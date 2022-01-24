#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct lan743x_adapter {int /*<<< orphan*/  netdev; TYPE_1__* rx; int /*<<< orphan*/ * tx; } ;
struct TYPE_3__ {scalar_t__ ring_cpu_ptr; } ;

/* Variables and functions */
 int LAN743X_USED_RX_CHANNELS ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*) ; 
 int FUNC1 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct lan743x_adapter*) ; 
 int FUNC3 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct lan743x_adapter*) ; 
 int FUNC5 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct lan743x_adapter*) ; 
 int FUNC7 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 struct lan743x_adapter* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC14(struct net_device *netdev)
{
	struct lan743x_adapter *adapter = FUNC12(netdev);
	int index;
	int ret;

	ret = FUNC1(adapter);
	if (ret)
		goto return_error;

	ret = FUNC3(adapter);
	if (ret)
		goto close_intr;

	ret = FUNC5(adapter);
	if (ret)
		goto close_mac;

	ret = FUNC7(adapter);
	if (ret)
		goto close_phy;

	FUNC8(adapter);

	for (index = 0; index < LAN743X_USED_RX_CHANNELS; index++) {
		ret = FUNC10(&adapter->rx[index]);
		if (ret)
			goto close_rx;
	}

	ret = FUNC11(&adapter->tx[0]);
	if (ret)
		goto close_rx;

	return 0;

close_rx:
	for (index = 0; index < LAN743X_USED_RX_CHANNELS; index++) {
		if (adapter->rx[index].ring_cpu_ptr)
			FUNC9(&adapter->rx[index]);
	}
	FUNC6(adapter);

close_phy:
	FUNC4(adapter);

close_mac:
	FUNC2(adapter);

close_intr:
	FUNC0(adapter);

return_error:
	FUNC13(adapter, ifup, adapter->netdev,
		   "Error opening LAN743x\n");
	return ret;
}