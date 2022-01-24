#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct igb_tx_buffer {int gso_segs; int tx_flags; struct sk_buff* skb; int /*<<< orphan*/  protocol; int /*<<< orphan*/  bytecount; } ;
struct igb_ring {size_t next_to_use; int /*<<< orphan*/  netdev; struct igb_tx_buffer* tx_buffer_info; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_2__ mac; } ;
struct TYPE_5__ {scalar_t__ tx_type; } ;
struct igb_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  ptp_tx_work; TYPE_3__ hw; struct sk_buff* ptp_tx_skb; int /*<<< orphan*/  tx_hwtstamp_skipped; int /*<<< orphan*/  ptp_tx_start; TYPE_1__ tstamp_config; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_8__ {unsigned short nr_frags; int tx_flags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ HWTSTAMP_TX_ON ; 
 int IGB_TX_FLAGS_TSTAMP ; 
 int IGB_TX_FLAGS_VLAN ; 
 int IGB_TX_FLAGS_VLAN_SHIFT ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int SKBTX_HW_TSTAMP ; 
 int SKBTX_IN_PROGRESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IGB_PTP_TX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ e1000_82576 ; 
 scalar_t__ FUNC4 (struct igb_ring*,scalar_t__) ; 
 int FUNC5 (struct igb_ring*,struct igb_tx_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct igb_ring*,struct igb_tx_buffer*) ; 
 scalar_t__ FUNC7 (struct igb_ring*,struct igb_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct igb_adapter* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 TYPE_4__* FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 

netdev_tx_t FUNC19(struct sk_buff *skb,
				struct igb_ring *tx_ring)
{
	struct igb_tx_buffer *first;
	int tso;
	u32 tx_flags = 0;
	unsigned short f;
	u16 count = FUNC0(FUNC12(skb));
	__be16 protocol = FUNC18(skb);
	u8 hdr_len = 0;

	/* need: 1 descriptor per page * PAGE_SIZE/IGB_MAX_DATA_PER_TXD,
	 *       + 1 desc for skb_headlen/IGB_MAX_DATA_PER_TXD,
	 *       + 2 desc gap to keep tail from touching head,
	 *       + 1 desc for context descriptor,
	 * otherwise try next time
	 */
	for (f = 0; f < FUNC13(skb)->nr_frags; f++)
		count += FUNC0(FUNC10(
						&FUNC13(skb)->frags[f]));

	if (FUNC4(tx_ring, count + 3)) {
		/* this is a hard error */
		return NETDEV_TX_BUSY;
	}

	/* record the location of the first descriptor for this packet */
	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
	first->skb = skb;
	first->bytecount = skb->len;
	first->gso_segs = 1;

	if (FUNC17(FUNC13(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
		struct igb_adapter *adapter = FUNC8(tx_ring->netdev);

		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
		    !FUNC16(__IGB_PTP_TX_IN_PROGRESS,
					   &adapter->state)) {
			FUNC13(skb)->tx_flags |= SKBTX_IN_PROGRESS;
			tx_flags |= IGB_TX_FLAGS_TSTAMP;

			adapter->ptp_tx_skb = FUNC11(skb);
			adapter->ptp_tx_start = jiffies;
			if (adapter->hw.mac.type == e1000_82576)
				FUNC9(&adapter->ptp_tx_work);
		} else {
			adapter->tx_hwtstamp_skipped++;
		}
	}

	if (FUNC15(skb)) {
		tx_flags |= IGB_TX_FLAGS_VLAN;
		tx_flags |= (FUNC14(skb) << IGB_TX_FLAGS_VLAN_SHIFT);
	}

	/* record initial flags and protocol */
	first->tx_flags = tx_flags;
	first->protocol = protocol;

	tso = FUNC5(tx_ring, first, &hdr_len);
	if (tso < 0)
		goto out_drop;
	else if (!tso)
		FUNC6(tx_ring, first);

	if (FUNC7(tx_ring, first, hdr_len))
		goto cleanup_tx_tstamp;

	return NETDEV_TX_OK;

out_drop:
	FUNC3(first->skb);
	first->skb = NULL;
cleanup_tx_tstamp:
	if (FUNC17(tx_flags & IGB_TX_FLAGS_TSTAMP)) {
		struct igb_adapter *adapter = FUNC8(tx_ring->netdev);

		FUNC3(adapter->ptp_tx_skb);
		adapter->ptp_tx_skb = NULL;
		if (adapter->hw.mac.type == e1000_82576)
			FUNC1(&adapter->ptp_tx_work);
		FUNC2(__IGB_PTP_TX_IN_PROGRESS, &adapter->state);
	}

	return NETDEV_TX_OK;
}