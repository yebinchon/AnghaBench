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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbe_ring {int /*<<< orphan*/  state; } ;
struct ixgbe_adapter {struct ixgbe_ring** tx_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  __IXGBE_TX_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 struct ixgbe_adapter* FUNC1 (struct net_device*) ; 
 size_t FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb,
				      struct net_device *netdev,
				      struct ixgbe_ring *ring)
{
	struct ixgbe_adapter *adapter = FUNC1(netdev);
	struct ixgbe_ring *tx_ring;

	/*
	 * The minimum packet size for olinfo paylen is 17 so pad the skb
	 * in order to meet this minimum size requirement.
	 */
	if (FUNC3(skb, 17))
		return NETDEV_TX_OK;

	tx_ring = ring ? ring : adapter->tx_ring[FUNC2(skb)];
	if (FUNC5(FUNC4(__IXGBE_TX_DISABLED, &tx_ring->state)))
		return NETDEV_TX_BUSY;

	return FUNC0(skb, adapter, tx_ring);
}