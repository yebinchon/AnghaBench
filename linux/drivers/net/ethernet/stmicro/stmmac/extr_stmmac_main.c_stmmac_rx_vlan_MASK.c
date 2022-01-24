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
typedef  int /*<<< orphan*/  u16 ;
struct vlan_ethhdr {scalar_t__ h_vlan_proto; int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int features; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_STAG_RX ; 
 scalar_t__ VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct vlan_ethhdr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, struct sk_buff *skb)
{
	struct vlan_ethhdr *veth;
	__be16 vlan_proto;
	u16 vlanid;

	veth = (struct vlan_ethhdr *)skb->data;
	vlan_proto = veth->h_vlan_proto;

	if ((vlan_proto == FUNC1(ETH_P_8021Q) &&
	     dev->features & NETIF_F_HW_VLAN_CTAG_RX) ||
	    (vlan_proto == FUNC1(ETH_P_8021AD) &&
	     dev->features & NETIF_F_HW_VLAN_STAG_RX)) {
		/* pop the vlan tag */
		vlanid = FUNC3(veth->h_vlan_TCI);
		FUNC2(skb->data + VLAN_HLEN, veth, ETH_ALEN * 2);
		FUNC4(skb, VLAN_HLEN);
		FUNC0(skb, vlan_proto, vlanid);
	}
}