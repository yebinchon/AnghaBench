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
struct vlan_hdr {scalar_t__ h_vlan_encapsulated_proto; int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct iavf_ring {TYPE_1__* netdev; } ;
typedef  int /*<<< orphan*/  _vhdr ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int IAVF_TX_FLAGS_HW_VLAN ; 
 int IAVF_TX_FLAGS_SW_VLAN ; 
 int IAVF_TX_FLAGS_VLAN_SHIFT ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct vlan_hdr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct vlan_hdr*) ; 
 int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC6(struct sk_buff *skb,
					     struct iavf_ring *tx_ring,
					     u32 *flags)
{
	__be16 protocol = skb->protocol;
	u32  tx_flags = 0;

	if (protocol == FUNC0(ETH_P_8021Q) &&
	    !(tx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)) {
		/* When HW VLAN acceleration is turned off by the user the
		 * stack sets the protocol to 8021q so that the driver
		 * can take any steps required to support the SW only
		 * VLAN handling.  In our case the driver doesn't need
		 * to take any further steps so just set the protocol
		 * to the encapsulated ethertype.
		 */
		skb->protocol = FUNC5(skb);
		goto out;
	}

	/* if we have a HW VLAN tag being added, default to the HW one */
	if (FUNC4(skb)) {
		tx_flags |= FUNC3(skb) << IAVF_TX_FLAGS_VLAN_SHIFT;
		tx_flags |= IAVF_TX_FLAGS_HW_VLAN;
	/* else if it is a SW VLAN, check the next protocol and store the tag */
	} else if (protocol == FUNC0(ETH_P_8021Q)) {
		struct vlan_hdr *vhdr, _vhdr;

		vhdr = FUNC2(skb, ETH_HLEN, sizeof(_vhdr), &_vhdr);
		if (!vhdr)
			return -EINVAL;

		protocol = vhdr->h_vlan_encapsulated_proto;
		tx_flags |= FUNC1(vhdr->h_vlan_TCI) << IAVF_TX_FLAGS_VLAN_SHIFT;
		tx_flags |= IAVF_TX_FLAGS_SW_VLAN;
	}

out:
	*flags = tx_flags;
	return 0;
}