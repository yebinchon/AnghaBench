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
struct TYPE_2__ {int max_frame_size; int rx_jumbo_th; } ;
struct atl1e_adapter {int /*<<< orphan*/  flags; TYPE_1__ hw; } ;

/* Variables and functions */
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  __AT_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct atl1e_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, int new_mtu)
{
	struct atl1e_adapter *adapter = FUNC4(netdev);
	int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;

	/* set MTU */
	if (FUNC5(netdev)) {
		while (FUNC6(__AT_RESETTING, &adapter->flags))
			FUNC3(1);
		netdev->mtu = new_mtu;
		adapter->hw.max_frame_size = new_mtu;
		adapter->hw.rx_jumbo_th = (max_frame + 7) >> 3;
		FUNC0(adapter);
		FUNC1(adapter);
		FUNC2(__AT_RESETTING, &adapter->flags);
	}
	return 0;
}