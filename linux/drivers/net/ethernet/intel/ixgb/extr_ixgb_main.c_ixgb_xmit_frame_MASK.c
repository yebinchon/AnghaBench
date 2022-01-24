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
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {unsigned int next_to_use; TYPE_1__* buffer_info; } ;
struct ixgb_adapter {TYPE_2__ tx_ring; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_3__ {scalar_t__ time_stamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_NEEDED ; 
 unsigned int IXGB_TX_FLAGS_CSUM ; 
 unsigned int IXGB_TX_FLAGS_TSO ; 
 unsigned int IXGB_TX_FLAGS_VLAN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  __IXGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ixgb_adapter*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct ixgb_adapter*,struct sk_buff*) ; 
 int FUNC4 (struct ixgb_adapter*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgb_adapter*,int,int,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 
 struct ixgb_adapter* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t
FUNC12(struct sk_buff *skb, struct net_device *netdev)
{
	struct ixgb_adapter *adapter = FUNC7(netdev);
	unsigned int first;
	unsigned int tx_flags = 0;
	int vlan_id = 0;
	int count = 0;
	int tso;

	if (FUNC10(__IXGB_DOWN, &adapter->flags)) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	if (skb->len <= 0) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	if (FUNC11(FUNC1(netdev, &adapter->tx_ring,
                     DESC_NEEDED)))
		return NETDEV_TX_BUSY;

	if (FUNC9(skb)) {
		tx_flags |= IXGB_TX_FLAGS_VLAN;
		vlan_id = FUNC8(skb);
	}

	first = adapter->tx_ring.next_to_use;

	tso = FUNC2(adapter, skb);
	if (tso < 0) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	if (FUNC6(tso))
		tx_flags |= IXGB_TX_FLAGS_TSO;
	else if (FUNC3(adapter, skb))
		tx_flags |= IXGB_TX_FLAGS_CSUM;

	count = FUNC4(adapter, skb, first);

	if (count) {
		FUNC5(adapter, count, vlan_id, tx_flags);
		/* Make sure there is space in the ring for the next send. */
		FUNC1(netdev, &adapter->tx_ring, DESC_NEEDED);

	} else {
		FUNC0(skb);
		adapter->tx_ring.buffer_info[first].time_stamp = 0;
		adapter->tx_ring.next_to_use = first;
	}

	return NETDEV_TX_OK;
}