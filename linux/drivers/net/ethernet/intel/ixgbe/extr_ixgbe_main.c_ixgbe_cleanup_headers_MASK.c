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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct sk_buff {int dummy; } ;
struct net_device {int features; } ;
struct ixgbe_ring {struct net_device* netdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IXGBE_RXDADV_ERR_FRAME_ERR_MASK ; 
 int NETIF_F_RXALL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_ring*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*) ; 
 scalar_t__ FUNC5 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

bool FUNC8(struct ixgbe_ring *rx_ring,
			   union ixgbe_adv_rx_desc *rx_desc,
			   struct sk_buff *skb)
{
	struct net_device *netdev = rx_ring->netdev;

	/* XDP packets use error pointer so abort at this point */
	if (FUNC0(skb))
		return true;

	/* Verify netdev is present, and that packet does not have any
	 * errors that would be unacceptable to the netdev.
	 */
	if (!netdev ||
	    (FUNC7(FUNC5(rx_desc,
					 IXGBE_RXDADV_ERR_FRAME_ERR_MASK) &&
	     !(netdev->features & NETIF_F_RXALL)))) {
		FUNC1(skb);
		return true;
	}

	/* place header in linear portion of buffer */
	if (!FUNC6(skb))
		FUNC3(rx_ring, skb);

#ifdef IXGBE_FCOE
	/* do not attempt to pad FCoE Frames as this will disrupt DDP */
	if (ixgbe_rx_is_fcoe(rx_ring, rx_desc))
		return false;

#endif
	/* if eth_skb_pad returns an error the skb was freed */
	if (FUNC2(skb))
		return true;

	return false;
}