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
struct net_device {int mtu; int /*<<< orphan*/  dev_addr; } ;
struct et131x_adapter {int registry_jumbo_packet; int /*<<< orphan*/  addr; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct et131x_adapter* FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev, int new_mtu)
{
	int result = 0;
	struct et131x_adapter *adapter = FUNC10(netdev);

	FUNC4(netdev);

	netdev->mtu = new_mtu;

	FUNC2(adapter);

	/* Set the config parameter for Jumbo Packet support */
	adapter->registry_jumbo_packet = new_mtu + 14;
	FUNC8(adapter);

	result = FUNC1(adapter);
	if (result != 0) {
		FUNC0(&adapter->pdev->dev,
			 "Change MTU failed; couldn't re-alloc DMA memory\n");
		return result;
	}

	FUNC7(adapter);
	FUNC6(adapter);
	FUNC9(netdev->dev_addr, adapter->addr);

	/* Init the device with the new settings */
	FUNC3(adapter);
	FUNC5(netdev);

	return result;
}