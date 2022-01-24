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
typedef  scalar_t__ u16 ;
struct vlan_ethhdr {int /*<<< orphan*/  h_vlan_encapsulated_proto; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ ETH_P_8021Q ; 
 scalar_t__ ETH_P_FCOE ; 
 scalar_t__ ETH_P_FIP ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct bnx2x* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txq_index ; 

u16 FUNC7(struct net_device *dev, struct sk_buff *skb,
		       struct net_device *sb_dev)
{
	struct bnx2x *bp = FUNC5(dev);

	if (FUNC1(bp) && !FUNC2(bp)) {
		struct ethhdr *hdr = (struct ethhdr *)skb->data;
		u16 ether_type = FUNC6(hdr->h_proto);

		/* Skip VLAN tag if present */
		if (ether_type == ETH_P_8021Q) {
			struct vlan_ethhdr *vhdr =
				(struct vlan_ethhdr *)skb->data;

			ether_type = FUNC6(vhdr->h_vlan_encapsulated_proto);
		}

		/* If ethertype is FCoE or FIP - use FCoE ring */
		if ((ether_type == ETH_P_FCOE) || (ether_type == ETH_P_FIP))
			return FUNC3(bp, txq_index);
	}

	/* select a non-FCoE queue */
	return FUNC4(dev, skb, NULL) % (FUNC0(bp));
}