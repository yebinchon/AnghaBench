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
typedef  int u32 ;
struct net_device {int mtu; int features; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; struct net_device* netdev; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int IXGBE_ETH_FRAMING ; 
 int IXGBE_FCOE_JUMBO_FRAME_SIZE ; 
 int IXGBE_FLAG_SRIOV_ENABLED ; 
 int FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int NETIF_F_FCOE_MTU ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (struct ixgbe_adapter*) ; 
#define  ixgbe_mac_X540 131 
#define  ixgbe_mac_X550 130 
#define  ixgbe_mac_X550EM_x 129 
#define  ixgbe_mac_x550em_a 128 

__attribute__((used)) static int FUNC8(struct ixgbe_adapter *adapter, int pb)
{
	struct ixgbe_hw *hw = &adapter->hw;
	struct net_device *dev = adapter->netdev;
	int link, tc, kb, marker;
	u32 dv_id, rx_pba;

	/* Calculate max LAN frame size */
	tc = link = dev->mtu + ETH_HLEN + ETH_FCS_LEN + IXGBE_ETH_FRAMING;

#ifdef IXGBE_FCOE
	/* FCoE traffic class uses FCOE jumbo frames */
	if ((dev->features & NETIF_F_FCOE_MTU) &&
	    (tc < IXGBE_FCOE_JUMBO_FRAME_SIZE) &&
	    (pb == ixgbe_fcoe_get_tc(adapter)))
		tc = IXGBE_FCOE_JUMBO_FRAME_SIZE;
#endif

	/* Calculate delay value for device */
	switch (hw->mac.type) {
	case ixgbe_mac_X540:
	case ixgbe_mac_X550:
	case ixgbe_mac_X550EM_x:
	case ixgbe_mac_x550em_a:
		dv_id = FUNC3(link, tc);
		break;
	default:
		dv_id = FUNC2(link, tc);
		break;
	}

	/* Loopback switch introduces additional latency */
	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
		dv_id += FUNC0(tc);

	/* Delay value is calculated in bit times convert to KB */
	kb = FUNC1(dv_id);
	rx_pba = FUNC4(hw, FUNC5(pb)) >> 10;

	marker = rx_pba - kb;

	/* It is possible that the packet buffer is not large enough
	 * to provide required headroom. In this case throw an error
	 * to user and a do the best we can.
	 */
	if (marker < 0) {
		FUNC6(drv, "Packet Buffer(%i) can not provide enough"
			    "headroom to support flow control."
			    "Decrease MTU or number of traffic classes\n", pb);
		marker = tc + 1;
	}

	return marker;
}