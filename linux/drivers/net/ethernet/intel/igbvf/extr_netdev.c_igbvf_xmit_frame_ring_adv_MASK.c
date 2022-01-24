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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct igbvf_ring {unsigned int next_to_use; TYPE_1__* buffer_info; } ;
struct igbvf_adapter {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  scalar_t__ __be16 ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;
struct TYPE_3__ {scalar_t__ time_stamp; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 unsigned int IGBVF_TX_FLAGS_CSUM ; 
 unsigned int IGBVF_TX_FLAGS_IPV4 ; 
 unsigned int IGBVF_TX_FLAGS_TSO ; 
 unsigned int IGBVF_TX_FLAGS_VLAN ; 
 unsigned int IGBVF_TX_FLAGS_VLAN_SHIFT ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  __IGBVF_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*,scalar_t__) ; 
 int FUNC3 (struct igbvf_ring*,struct sk_buff*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct igbvf_ring*,struct sk_buff*,unsigned int,scalar_t__) ; 
 int FUNC5 (struct igbvf_adapter*,struct igbvf_ring*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct igbvf_adapter*,struct igbvf_ring*,unsigned int,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct igbvf_adapter* FUNC7 (struct net_device*) ; 
 TYPE_2__* FUNC8 (struct sk_buff*) ; 
 unsigned int FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC14(struct sk_buff *skb,
					     struct net_device *netdev,
					     struct igbvf_ring *tx_ring)
{
	struct igbvf_adapter *adapter = FUNC7(netdev);
	unsigned int first, tx_flags = 0;
	u8 hdr_len = 0;
	int count = 0;
	int tso = 0;
	__be16 protocol = FUNC13(skb);

	if (FUNC11(__IGBVF_DOWN, &adapter->state)) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	if (skb->len <= 0) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	/* need: count + 4 desc gap to keep tail from touching
	 *       + 2 desc gap to keep tail from touching head,
	 *       + 1 desc for skb->data,
	 *       + 1 desc for context descriptor,
	 * head, otherwise try next time
	 */
	if (FUNC2(netdev, FUNC8(skb)->nr_frags + 4)) {
		/* this is a hard error */
		return NETDEV_TX_BUSY;
	}

	if (FUNC10(skb)) {
		tx_flags |= IGBVF_TX_FLAGS_VLAN;
		tx_flags |= (FUNC9(skb) <<
			     IGBVF_TX_FLAGS_VLAN_SHIFT);
	}

	if (protocol == FUNC1(ETH_P_IP))
		tx_flags |= IGBVF_TX_FLAGS_IPV4;

	first = tx_ring->next_to_use;

	tso = FUNC3(tx_ring, skb, tx_flags, &hdr_len);
	if (FUNC12(tso < 0)) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	if (tso)
		tx_flags |= IGBVF_TX_FLAGS_TSO;
	else if (FUNC4(tx_ring, skb, tx_flags, protocol) &&
		 (skb->ip_summed == CHECKSUM_PARTIAL))
		tx_flags |= IGBVF_TX_FLAGS_CSUM;

	/* count reflects descriptors mapped, if 0 then mapping error
	 * has occurred and we need to rewind the descriptor queue
	 */
	count = FUNC5(adapter, tx_ring, skb);

	if (count) {
		FUNC6(adapter, tx_ring, tx_flags, count,
				   first, skb->len, hdr_len);
		/* Make sure there is space in the ring for the next send. */
		FUNC2(netdev, MAX_SKB_FRAGS + 4);
	} else {
		FUNC0(skb);
		tx_ring->buffer_info[first].time_stamp = 0;
		tx_ring->next_to_use = first;
	}

	return NETDEV_TX_OK;
}