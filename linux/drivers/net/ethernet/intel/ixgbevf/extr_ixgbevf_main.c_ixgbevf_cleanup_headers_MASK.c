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
struct ixgbevf_ring {struct net_device* netdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IXGBE_RXDADV_ERR_FRAME_ERR_MASK ; 
 int NETIF_F_RXALL ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct ixgbevf_ring *rx_ring,
				    union ixgbe_adv_rx_desc *rx_desc,
				    struct sk_buff *skb)
{
	/* XDP packets use error pointer so abort at this point */
	if (FUNC0(skb))
		return true;

	/* verify that the packet does not have any known errors */
	if (FUNC4(FUNC3(rx_desc,
					  IXGBE_RXDADV_ERR_FRAME_ERR_MASK))) {
		struct net_device *netdev = rx_ring->netdev;

		if (!(netdev->features & NETIF_F_RXALL)) {
			FUNC1(skb);
			return true;
		}
	}

	/* if eth_skb_pad returns an error the skb was freed */
	if (FUNC2(skb))
		return true;

	return false;
}