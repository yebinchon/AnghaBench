#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct net_device {int mtu; TYPE_3__ dev; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct e1000_adapter {int flags; int flags2; int max_frame_size; int rx_buffer_len; int /*<<< orphan*/  state; TYPE_2__ hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_DATA_LEN ; 
 int ETH_FCS_LEN ; 
 int FLAG2_CRC_STRIPPING ; 
 int FLAG_HAS_JUMBO_FRAMES ; 
 int VLAN_ETH_FRAME_LEN ; 
 int VLAN_ETH_HLEN ; 
 int /*<<< orphan*/  __E1000_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ e1000_pch2lan ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 struct e1000_adapter* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static int FUNC12(struct net_device *netdev, int new_mtu)
{
	struct e1000_adapter *adapter = FUNC6(netdev);
	int max_frame = new_mtu + VLAN_ETH_HLEN + ETH_FCS_LEN;

	/* Jumbo frame support */
	if ((new_mtu > ETH_DATA_LEN) &&
	    !(adapter->flags & FLAG_HAS_JUMBO_FRAMES)) {
		FUNC4("Jumbo Frames not supported.\n");
		return -EINVAL;
	}

	/* Jumbo frame workaround on 82579 and newer requires CRC be stripped */
	if ((adapter->hw.mac.type >= e1000_pch2lan) &&
	    !(adapter->flags2 & FLAG2_CRC_STRIPPING) &&
	    (new_mtu > ETH_DATA_LEN)) {
		FUNC4("Jumbo Frames not supported on this device when CRC stripping is disabled.\n");
		return -EINVAL;
	}

	while (FUNC10(__E1000_RESETTING, &adapter->state))
		FUNC11(1000, 1100);
	/* e1000e_down -> e1000e_reset dependent on max_frame_size & mtu */
	adapter->max_frame_size = max_frame;
	FUNC5("changing MTU from %d to %d\n", netdev->mtu, new_mtu);
	netdev->mtu = new_mtu;

	FUNC8(netdev->dev.parent);

	if (FUNC7(netdev))
		FUNC1(adapter, true);

	/* NOTE: netdev_alloc_skb reserves 16 bytes, and typically NET_IP_ALIGN
	 * means we reserve 2 more, this pushes us to allocate from the next
	 * larger slab size.
	 * i.e. RXBUFFER_2048 --> size-4096 slab
	 * However with the new *_jumbo_rx* routines, jumbo receives will use
	 * fragmented skbs
	 */

	if (max_frame <= 2048)
		adapter->rx_buffer_len = 2048;
	else
		adapter->rx_buffer_len = 4096;

	/* adjust allocation if LPE protects us, and we aren't using SBP */
	if (max_frame <= (VLAN_ETH_FRAME_LEN + ETH_FCS_LEN))
		adapter->rx_buffer_len = VLAN_ETH_FRAME_LEN + ETH_FCS_LEN;

	if (FUNC7(netdev))
		FUNC3(adapter);
	else
		FUNC2(adapter);

	FUNC9(netdev->dev.parent);

	FUNC0(__E1000_RESETTING, &adapter->state);

	return 0;
}