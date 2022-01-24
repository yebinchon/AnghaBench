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
struct sk_buff {int len; size_t queue_mapping; } ;
struct net_device {int dummy; } ;
struct ixgbevf_ring {int dummy; } ;
struct ixgbevf_adapter {struct ixgbevf_ring** tx_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct ixgbevf_ring*) ; 
 struct ixgbevf_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static netdev_tx_t FUNC4(struct sk_buff *skb, struct net_device *netdev)
{
	struct ixgbevf_adapter *adapter = FUNC2(netdev);
	struct ixgbevf_ring *tx_ring;

	if (skb->len <= 0) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	/* The minimum packet size for olinfo paylen is 17 so pad the skb
	 * in order to meet this minimum size requirement.
	 */
	if (skb->len < 17) {
		if (FUNC3(skb, 17))
			return NETDEV_TX_OK;
		skb->len = 17;
	}

	tx_ring = adapter->tx_ring[skb->queue_mapping];
	return FUNC1(skb, tx_ring);
}