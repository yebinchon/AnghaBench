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
struct sk_buff {size_t queue_mapping; scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct iavf_ring {int dummy; } ;
struct iavf_adapter {struct iavf_ring* tx_rings; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ IAVF_MIN_TX_LEN ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct iavf_ring*) ; 
 struct iavf_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 

netdev_tx_t FUNC5(struct sk_buff *skb, struct net_device *netdev)
{
	struct iavf_adapter *adapter = FUNC1(netdev);
	struct iavf_ring *tx_ring = &adapter->tx_rings[skb->queue_mapping];

	/* hardware can't handle really short frames, hardware padding works
	 * beyond this point
	 */
	if (FUNC4(skb->len < IAVF_MIN_TX_LEN)) {
		if (FUNC2(skb, IAVF_MIN_TX_LEN - skb->len))
			return NETDEV_TX_OK;
		skb->len = IAVF_MIN_TX_LEN;
		FUNC3(skb, IAVF_MIN_TX_LEN);
	}

	return FUNC0(skb, tx_ring);
}