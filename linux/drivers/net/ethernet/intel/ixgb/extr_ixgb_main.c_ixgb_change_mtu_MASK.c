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
struct net_device {int mtu; } ;
struct ixgb_adapter {int rx_buffer_len; } ;

/* Variables and functions */
 int ENET_FCS_LENGTH ; 
 int ENET_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ixgb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_adapter*) ; 
 struct ixgb_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *netdev, int new_mtu)
{
	struct ixgb_adapter *adapter = FUNC2(netdev);
	int max_frame = new_mtu + ENET_HEADER_SIZE + ENET_FCS_LENGTH;

	if (FUNC3(netdev))
		FUNC0(adapter, true);

	adapter->rx_buffer_len = max_frame + 8; /* + 8 for errata */

	netdev->mtu = new_mtu;

	if (FUNC3(netdev))
		FUNC1(adapter);

	return 0;
}