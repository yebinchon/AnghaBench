#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct ice_ring {TYPE_2__* q_vector; TYPE_1__* netdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; } ;
struct TYPE_3__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC3(struct ice_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag)
{
	if ((rx_ring->netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
	    (vlan_tag & VLAN_VID_MASK))
		FUNC0(skb, FUNC1(ETH_P_8021Q), vlan_tag);
	FUNC2(&rx_ring->q_vector->napi, skb);
}