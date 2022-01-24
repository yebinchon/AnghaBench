#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  vlan; } ;
struct TYPE_8__ {TYPE_3__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_4__ wb; } ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ len; } ;
struct net_device {int features; } ;
struct ixgbe_ring {int /*<<< orphan*/  queue_index; TYPE_2__* q_vector; struct net_device* netdev; } ;
struct TYPE_6__ {TYPE_1__* adapter; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int IXGBE_FLAG_RX_HWTSTAMP_ENABLED ; 
 int /*<<< orphan*/  IXGBE_RXDADV_STAT_SECP ; 
 int /*<<< orphan*/  IXGBE_RXD_STAT_VP ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 scalar_t__ FUNC7 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_ring*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

void FUNC15(struct ixgbe_ring *rx_ring,
			      union ixgbe_adv_rx_desc *rx_desc,
			      struct sk_buff *skb)
{
	struct net_device *dev = rx_ring->netdev;
	u32 flags = rx_ring->q_vector->adapter->flags;

	FUNC8(rx_ring, skb);

	FUNC6(rx_ring, rx_desc, skb);

	FUNC5(rx_ring, rx_desc, skb);

	if (FUNC14(flags & IXGBE_FLAG_RX_HWTSTAMP_ENABLED))
		FUNC4(rx_ring, rx_desc, skb);

	if ((dev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
	    FUNC7(rx_desc, IXGBE_RXD_STAT_VP)) {
		u16 vid = FUNC9(rx_desc->wb.upper.vlan);
		FUNC0(skb, FUNC2(ETH_P_8021Q), vid);
	}

	if (FUNC7(rx_desc, IXGBE_RXDADV_STAT_SECP))
		FUNC3(rx_ring, rx_desc, skb);

	/* record Rx queue, or update MACVLAN statistics */
	if (FUNC12(dev))
		FUNC13(skb, rx_ring->queue_index);
	else
		FUNC10(FUNC11(dev), skb->len + ETH_HLEN, true,
				 false);

	skb->protocol = FUNC1(skb, dev);
}