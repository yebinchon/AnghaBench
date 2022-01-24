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
struct net_device {unsigned int mtu; } ;
struct ixgbevf_ring {int dummy; } ;
struct ixgbevf_adapter {int flags; struct net_device* netdev; } ;

/* Variables and functions */
 unsigned int ETH_FCS_LEN ; 
 unsigned int ETH_HLEN ; 
 int IXGBEVF_FLAGS_LEGACY_RX ; 
 unsigned int IXGBEVF_MAX_FRAME_BUILD_SKB ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_ring*) ; 

__attribute__((used)) static void FUNC4(struct ixgbevf_adapter *adapter,
				      struct ixgbevf_ring *rx_ring)
{
	struct net_device *netdev = adapter->netdev;
	unsigned int max_frame = netdev->mtu + ETH_HLEN + ETH_FCS_LEN;

	/* set build_skb and buffer size flags */
	FUNC0(rx_ring);
	FUNC1(rx_ring);

	if (adapter->flags & IXGBEVF_FLAGS_LEGACY_RX)
		return;

	FUNC2(rx_ring);

	if (PAGE_SIZE < 8192) {
		if (max_frame <= IXGBEVF_MAX_FRAME_BUILD_SKB)
			return;

		FUNC3(rx_ring);
	}
}