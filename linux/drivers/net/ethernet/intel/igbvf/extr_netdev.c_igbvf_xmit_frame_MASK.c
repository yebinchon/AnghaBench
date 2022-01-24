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
struct igbvf_ring {int dummy; } ;
struct igbvf_adapter {struct igbvf_ring* tx_ring; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  __IGBVF_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*,struct igbvf_ring*) ; 
 struct igbvf_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC4(struct sk_buff *skb,
				    struct net_device *netdev)
{
	struct igbvf_adapter *adapter = FUNC2(netdev);
	struct igbvf_ring *tx_ring;

	if (FUNC3(__IGBVF_DOWN, &adapter->state)) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	tx_ring = &adapter->tx_ring[0];

	return FUNC1(skb, netdev, tx_ring);
}