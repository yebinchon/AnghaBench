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
struct net_device {int mtu; } ;
struct TYPE_2__ {int max_frame_size; } ;
struct atl1c_adapter {int /*<<< orphan*/  flags; TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  __AT_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_adapter*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct atl1c_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, int new_mtu)
{
	struct atl1c_adapter *adapter = FUNC5(netdev);

	/* set MTU */
	if (FUNC7(netdev)) {
		while (FUNC8(__AT_RESETTING, &adapter->flags))
			FUNC4(1);
		netdev->mtu = new_mtu;
		adapter->hw.max_frame_size = new_mtu;
		FUNC1(adapter, netdev);
		FUNC0(adapter);
		FUNC6(netdev);
		FUNC2(adapter);
		FUNC3(__AT_RESETTING, &adapter->flags);
	}
	return 0;
}