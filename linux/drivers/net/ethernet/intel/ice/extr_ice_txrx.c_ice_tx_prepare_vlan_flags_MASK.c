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
struct vlan_hdr {int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct ice_tx_buf {int tx_flags; struct sk_buff* skb; } ;
struct ice_ring {TYPE_1__* netdev; } ;
typedef  int /*<<< orphan*/  _vhdr ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int ICE_TX_FLAGS_HW_VLAN ; 
 int ICE_TX_FLAGS_SW_VLAN ; 
 int ICE_TX_FLAGS_VLAN_S ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ice_ring*,struct ice_tx_buf*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct vlan_hdr*) ; 
 int FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC7(struct ice_ring *tx_ring, struct ice_tx_buf *first)
{
	struct sk_buff *skb = first->skb;
	__be16 protocol = skb->protocol;

	if (protocol == FUNC0(ETH_P_8021Q) &&
	    !(tx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)) {
		/* when HW VLAN acceleration is turned off by the user the
		 * stack sets the protocol to 8021q so that the driver
		 * can take any steps required to support the SW only
		 * VLAN handling. In our case the driver doesn't need
		 * to take any further steps so just set the protocol
		 * to the encapsulated ethertype.
		 */
		skb->protocol = FUNC6(skb);
		return 0;
	}

	/* if we have a HW VLAN tag being added, default to the HW one */
	if (FUNC5(skb)) {
		first->tx_flags |= FUNC4(skb) << ICE_TX_FLAGS_VLAN_S;
		first->tx_flags |= ICE_TX_FLAGS_HW_VLAN;
	} else if (protocol == FUNC0(ETH_P_8021Q)) {
		struct vlan_hdr *vhdr, _vhdr;

		/* for SW VLAN, check the next protocol and store the tag */
		vhdr = (struct vlan_hdr *)FUNC3(skb, ETH_HLEN,
							     sizeof(_vhdr),
							     &_vhdr);
		if (!vhdr)
			return -EINVAL;

		first->tx_flags |= FUNC2(vhdr->h_vlan_TCI) <<
				   ICE_TX_FLAGS_VLAN_S;
		first->tx_flags |= ICE_TX_FLAGS_SW_VLAN;
	}

	return FUNC1(tx_ring, first);
}