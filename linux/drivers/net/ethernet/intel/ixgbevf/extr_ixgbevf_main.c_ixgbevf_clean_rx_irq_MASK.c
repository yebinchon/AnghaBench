#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  length; } ;
struct TYPE_9__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef  scalar_t__ u16 ;
struct xdp_buff {scalar_t__ data; scalar_t__ data_end; scalar_t__ data_hard_start; scalar_t__ data_meta; int /*<<< orphan*/ * rxq; } ;
struct sk_buff {scalar_t__ pkt_type; scalar_t__ len; } ;
struct ixgbevf_rx_buffer {int /*<<< orphan*/  pagecnt_bias; scalar_t__ page_offset; int /*<<< orphan*/  page; } ;
struct TYPE_12__ {unsigned int packets; unsigned int bytes; } ;
struct TYPE_10__ {int /*<<< orphan*/  alloc_rx_buff_failed; } ;
struct ixgbevf_ring {size_t queue_index; int /*<<< orphan*/  syncp; TYPE_5__ stats; int /*<<< orphan*/  next_to_use; struct sk_buff* skb; TYPE_4__* netdev; TYPE_3__ rx_stats; int /*<<< orphan*/  next_to_clean; int /*<<< orphan*/  xdp_rxq; } ;
struct TYPE_13__ {unsigned int total_packets; unsigned int total_bytes; } ;
struct ixgbevf_q_vector {TYPE_6__ rx; struct ixgbevf_adapter* adapter; } ;
struct ixgbevf_adapter {struct ixgbevf_ring** xdp_ring; } ;
struct TYPE_14__ {int /*<<< orphan*/  h_source; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ IXGBEVF_RX_BUFFER_WRITE ; 
 union ixgbe_adv_rx_desc* FUNC1 (struct ixgbevf_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBEVF_XDP_TX ; 
 scalar_t__ PACKET_BROADCAST ; 
 scalar_t__ PACKET_MULTICAST ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_7__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbevf_ring*,scalar_t__) ; 
 struct sk_buff* FUNC8 (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*,struct xdp_buff*,union ixgbe_adv_rx_desc*) ; 
 scalar_t__ FUNC9 (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*,struct xdp_buff*,union ixgbe_adv_rx_desc*) ; 
 scalar_t__ FUNC11 (struct ixgbevf_ring*) ; 
 struct ixgbevf_rx_buffer* FUNC12 (struct ixgbevf_ring*,unsigned int) ; 
 scalar_t__ FUNC13 (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*,struct sk_buff*) ; 
 struct sk_buff* FUNC16 (struct ixgbevf_adapter*,struct ixgbevf_ring*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*,unsigned int) ; 
 scalar_t__ FUNC18 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC19 (struct ixgbevf_q_vector*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct ixgbevf_ring*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 () ; 

__attribute__((used)) static int FUNC29(struct ixgbevf_q_vector *q_vector,
				struct ixgbevf_ring *rx_ring,
				int budget)
{
	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
	struct ixgbevf_adapter *adapter = q_vector->adapter;
	u16 cleaned_count = FUNC11(rx_ring);
	struct sk_buff *skb = rx_ring->skb;
	bool xdp_xmit = false;
	struct xdp_buff xdp;

	xdp.rxq = &rx_ring->xdp_rxq;

	while (FUNC22(total_rx_packets < budget)) {
		struct ixgbevf_rx_buffer *rx_buffer;
		union ixgbe_adv_rx_desc *rx_desc;
		unsigned int size;

		/* return some buffers to hardware, one at a time is too slow */
		if (cleaned_count >= IXGBEVF_RX_BUFFER_WRITE) {
			FUNC7(rx_ring, cleaned_count);
			cleaned_count = 0;
		}

		rx_desc = FUNC1(rx_ring, rx_ring->next_to_clean);
		size = FUNC21(rx_desc->wb.upper.length);
		if (!size)
			break;

		/* This memory barrier is needed to keep us from reading
		 * any other fields out of the rx_desc until we know the
		 * RXD_STAT_DD bit is set
		 */
		FUNC25();

		rx_buffer = FUNC12(rx_ring, size);

		/* retrieve a buffer from the ring */
		if (!skb) {
			xdp.data = FUNC23(rx_buffer->page) +
				   rx_buffer->page_offset;
			xdp.data_meta = xdp.data;
			xdp.data_hard_start = xdp.data -
					      FUNC18(rx_ring);
			xdp.data_end = xdp.data + size;

			skb = FUNC16(adapter, rx_ring, &xdp);
		}

		if (FUNC0(skb)) {
			if (FUNC2(skb) == -IXGBEVF_XDP_TX) {
				xdp_xmit = true;
				FUNC17(rx_ring, rx_buffer,
						       size);
			} else {
				rx_buffer->pagecnt_bias++;
			}
			total_rx_packets++;
			total_rx_bytes += size;
		} else if (skb) {
			FUNC6(rx_ring, rx_buffer, skb, size);
		} else if (FUNC24(rx_ring)) {
			skb = FUNC8(rx_ring, rx_buffer,
						&xdp, rx_desc);
		} else {
			skb = FUNC10(rx_ring, rx_buffer,
						    &xdp, rx_desc);
		}

		/* exit if we failed to retrieve a buffer */
		if (!skb) {
			rx_ring->rx_stats.alloc_rx_buff_failed++;
			rx_buffer->pagecnt_bias++;
			break;
		}

		FUNC15(rx_ring, rx_buffer, skb);
		cleaned_count++;

		/* fetch next buffer in frame if non-eop */
		if (FUNC13(rx_ring, rx_desc))
			continue;

		/* verify the packet layout is correct */
		if (FUNC9(rx_ring, rx_desc, skb)) {
			skb = NULL;
			continue;
		}

		/* probably a little skewed due to removing CRC */
		total_rx_bytes += skb->len;

		/* Workaround hardware that can't do proper VEPA multicast
		 * source pruning.
		 */
		if ((skb->pkt_type == PACKET_BROADCAST ||
		     skb->pkt_type == PACKET_MULTICAST) &&
		    FUNC5(rx_ring->netdev->dev_addr,
				     FUNC4(skb)->h_source)) {
			FUNC3(skb);
			continue;
		}

		/* populate checksum, VLAN, and protocol */
		FUNC14(rx_ring, rx_desc, skb);

		FUNC19(q_vector, skb);

		/* reset skb pointer */
		skb = NULL;

		/* update budget accounting */
		total_rx_packets++;
	}

	/* place incomplete frames back on ring for completion */
	rx_ring->skb = skb;

	if (xdp_xmit) {
		struct ixgbevf_ring *xdp_ring =
			adapter->xdp_ring[rx_ring->queue_index];

		/* Force memory writes to complete before letting h/w
		 * know there are new descriptors to fetch.
		 */
		FUNC28();
		FUNC20(xdp_ring, xdp_ring->next_to_use);
	}

	FUNC26(&rx_ring->syncp);
	rx_ring->stats.packets += total_rx_packets;
	rx_ring->stats.bytes += total_rx_bytes;
	FUNC27(&rx_ring->syncp);
	q_vector->rx.total_packets += total_rx_packets;
	q_vector->rx.total_bytes += total_rx_bytes;

	return total_rx_packets;
}