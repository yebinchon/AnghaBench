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
typedef  union igc_adv_rx_desc {int dummy; } igc_adv_rx_desc ;
struct sk_buff {int dummy; } ;
struct net_device {int features; } ;
struct igc_ring {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGC_RXDEXT_ERR_FRAME_ERR_MASK ; 
 int NETIF_F_RXALL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (union igc_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct igc_ring *rx_ring,
				union igc_adv_rx_desc *rx_desc,
				struct sk_buff *skb)
{
	if (FUNC3((FUNC2(rx_desc,
				       IGC_RXDEXT_ERR_FRAME_ERR_MASK)))) {
		struct net_device *netdev = rx_ring->netdev;

		if (!(netdev->features & NETIF_F_RXALL)) {
			FUNC0(skb);
			return true;
		}
	}

	/* if eth_skb_pad returns an error the skb was freed */
	if (FUNC1(skb))
		return true;

	return false;
}