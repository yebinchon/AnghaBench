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
struct pch_gbe_tx_ring {int /*<<< orphan*/  next_to_clean; int /*<<< orphan*/  next_to_use; } ;
struct pch_gbe_adapter {struct pch_gbe_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct pch_gbe_tx_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pch_gbe_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_adapter*,struct pch_gbe_tx_ring*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct net_device *netdev)
{
	struct pch_gbe_adapter *adapter = FUNC2(netdev);
	struct pch_gbe_tx_ring *tx_ring = adapter->tx_ring;

	if (FUNC5(!FUNC0(tx_ring))) {
		FUNC3(netdev);
		FUNC1(netdev,
			   "Return : BUSY  next_to use : 0x%08x  next_to clean : 0x%08x\n",
			   tx_ring->next_to_use, tx_ring->next_to_clean);
		return NETDEV_TX_BUSY;
	}

	/* CRC,ITAG no support */
	FUNC4(adapter, tx_ring, skb);
	return NETDEV_TX_OK;
}