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
typedef  int /*<<< orphan*/  u8 ;
struct vlan_ethhdr {scalar_t__ h_vlan_proto; int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  data_len; int /*<<< orphan*/  len; int /*<<< orphan*/  csum; } ;
struct net_device {int features; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  __wsum ;
struct TYPE_2__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int ETH_ALEN ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  MXGEFW_PAD ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static inline void
FUNC9(struct net_device *dev, void *addr, struct sk_buff *skb)
{
	u8 *va;
	struct vlan_ethhdr *veh;
	skb_frag_t *frag;
	__wsum vsum;

	va = addr;
	va += MXGEFW_PAD;
	veh = (struct vlan_ethhdr *)va;
	if ((dev->features & NETIF_F_HW_VLAN_CTAG_RX) ==
	    NETIF_F_HW_VLAN_CTAG_RX &&
	    veh->h_vlan_proto == FUNC3(ETH_P_8021Q)) {
		/* fixup csum if needed */
		if (skb->ip_summed == CHECKSUM_COMPLETE) {
			vsum = FUNC1(va + ETH_HLEN, VLAN_HLEN, 0);
			skb->csum = FUNC2(skb->csum, vsum);
		}
		/* pop tag */
		FUNC0(skb, FUNC3(ETH_P_8021Q), FUNC5(veh->h_vlan_TCI));
		FUNC4(va + VLAN_HLEN, va, 2 * ETH_ALEN);
		skb->len -= VLAN_HLEN;
		skb->data_len -= VLAN_HLEN;
		frag = FUNC8(skb)->frags;
		FUNC6(frag, VLAN_HLEN);
		FUNC7(frag, VLAN_HLEN);
	}
}