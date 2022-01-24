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
struct TYPE_3__ {int /*<<< orphan*/  vlan; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct ixgbevf_ring {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  IXGBE_RXDADV_STAT_SECP ; 
 int /*<<< orphan*/  IXGBE_RXD_STAT_VP ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,unsigned long*) ; 

__attribute__((used)) static void FUNC10(struct ixgbevf_ring *rx_ring,
				       union ixgbe_adv_rx_desc *rx_desc,
				       struct sk_buff *skb)
{
	FUNC5(rx_ring, rx_desc, skb);
	FUNC4(rx_ring, rx_desc, skb);

	if (FUNC6(rx_desc, IXGBE_RXD_STAT_VP)) {
		u16 vid = FUNC7(rx_desc->wb.upper.vlan);
		unsigned long *active_vlans = FUNC8(rx_ring->netdev);

		if (FUNC9(vid & VLAN_VID_MASK, active_vlans))
			FUNC0(skb, FUNC2(ETH_P_8021Q), vid);
	}

	if (FUNC6(rx_desc, IXGBE_RXDADV_STAT_SECP))
		FUNC3(rx_ring, rx_desc, skb);

	skb->protocol = FUNC1(skb, rx_ring->netdev);
}