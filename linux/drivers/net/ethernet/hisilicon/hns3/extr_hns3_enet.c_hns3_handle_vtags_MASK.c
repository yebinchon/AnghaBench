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
struct vlan_ethhdr {int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; int priority; scalar_t__ data; } ;
struct hns3_enet_ring {TYPE_1__* tqp; } ;
struct TYPE_6__ {TYPE_2__* netdev; } ;
struct hnae3_handle {scalar_t__ port_base_vlan_state; TYPE_3__ kinfo; } ;
struct TYPE_5__ {int features; } ;
struct TYPE_4__ {struct hnae3_handle* handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ HNAE3_PORT_BASE_VLAN_DISABLE ; 
 scalar_t__ HNAE3_PORT_BASE_VLAN_ENABLE ; 
 int HNS3_INNER_VLAN_TAG ; 
 int HNS3_OUTER_VLAN_TAG ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int VLAN_PRIO_MASK ; 
 int VLAN_PRIO_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 
 void* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct hns3_enet_ring *tx_ring,
			     struct sk_buff *skb)
{
	struct hnae3_handle *handle = tx_ring->tqp->handle;
	struct vlan_ethhdr *vhdr;
	int rc;

	if (!(skb->protocol == FUNC1(ETH_P_8021Q) ||
	      FUNC3(skb)))
		return 0;

	/* Since HW limitation, if port based insert VLAN enabled, only one VLAN
	 * header is allowed in skb, otherwise it will cause RAS error.
	 */
	if (FUNC5(FUNC4(skb) &&
		     handle->port_base_vlan_state ==
		     HNAE3_PORT_BASE_VLAN_ENABLE))
		return -EINVAL;

	if (skb->protocol == FUNC1(ETH_P_8021Q) &&
	    !(handle->kinfo.netdev->features & NETIF_F_HW_VLAN_CTAG_TX)) {
		/* When HW VLAN acceleration is turned off, and the stack
		 * sets the protocol to 802.1q, the driver just need to
		 * set the protocol to the encapsulated ethertype.
		 */
		skb->protocol = FUNC6(skb);
		return 0;
	}

	if (FUNC3(skb)) {
		/* Based on hw strategy, use out_vtag in two layer tag case,
		 * and use inner_vtag in one tag case.
		 */
		if (skb->protocol == FUNC1(ETH_P_8021Q) &&
		    handle->port_base_vlan_state ==
		    HNAE3_PORT_BASE_VLAN_DISABLE)
			rc = HNS3_OUTER_VLAN_TAG;
		else
			rc = HNS3_INNER_VLAN_TAG;

		skb->protocol = FUNC6(skb);
		return rc;
	}

	rc = FUNC2(skb, 0);
	if (FUNC5(rc < 0))
		return rc;

	vhdr = (struct vlan_ethhdr *)skb->data;
	vhdr->h_vlan_TCI |= FUNC0((skb->priority << VLAN_PRIO_SHIFT)
					 & VLAN_PRIO_MASK);

	skb->protocol = FUNC6(skb);
	return 0;
}