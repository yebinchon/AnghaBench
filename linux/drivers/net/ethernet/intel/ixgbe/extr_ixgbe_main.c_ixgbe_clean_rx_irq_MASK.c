#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  length; } ;
struct TYPE_8__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef  scalar_t__ u16 ;
struct xdp_buff {scalar_t__ data; scalar_t__ data_end; scalar_t__ data_hard_start; scalar_t__ data_meta; int /*<<< orphan*/ * rxq; } ;
struct sk_buff {scalar_t__ len; } ;
struct ixgbe_rx_buffer {int /*<<< orphan*/  pagecnt_bias; scalar_t__ page_offset; int /*<<< orphan*/  page; } ;
struct TYPE_11__ {unsigned int packets; unsigned int bytes; } ;
struct TYPE_9__ {int /*<<< orphan*/  alloc_rx_buff_failed; } ;
struct ixgbe_ring {int /*<<< orphan*/  syncp; TYPE_5__ stats; int /*<<< orphan*/  tail; int /*<<< orphan*/  next_to_use; TYPE_4__* netdev; TYPE_3__ rx_stats; int /*<<< orphan*/  next_to_clean; int /*<<< orphan*/  xdp_rxq; } ;
struct TYPE_12__ {unsigned int total_packets; unsigned int total_bytes; } ;
struct ixgbe_q_vector {TYPE_6__ rx; struct ixgbe_adapter* adapter; } ;
struct ixgbe_adapter {struct ixgbe_ring** xdp_ring; } ;
struct fcoe_hdr {int dummy; } ;
struct fcoe_crc_eof {int dummy; } ;
struct fc_frame_header {int dummy; } ;
struct TYPE_10__ {int mtu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,unsigned int) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ IXGBE_RX_BUFFER_WRITE ; 
 union ixgbe_adv_rx_desc* FUNC2 (struct ixgbe_ring*,int /*<<< orphan*/ ) ; 
 unsigned int IXGBE_XDP_REDIR ; 
 unsigned int IXGBE_XDP_TX ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_ring*,struct ixgbe_rx_buffer*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_ring*,scalar_t__) ; 
 struct sk_buff* FUNC8 (struct ixgbe_ring*,struct ixgbe_rx_buffer*,struct xdp_buff*,union ixgbe_adv_rx_desc*) ; 
 scalar_t__ FUNC9 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct ixgbe_ring*,struct ixgbe_rx_buffer*,struct xdp_buff*,union ixgbe_adv_rx_desc*) ; 
 scalar_t__ FUNC11 (struct ixgbe_ring*) ; 
 int FUNC12 (struct ixgbe_adapter*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 struct ixgbe_rx_buffer* FUNC13 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff**,unsigned int) ; 
 scalar_t__ FUNC14 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct ixgbe_ring*,struct ixgbe_rx_buffer*,struct sk_buff*) ; 
 struct sk_buff* FUNC17 (struct ixgbe_adapter*,struct ixgbe_ring*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct ixgbe_ring*,struct ixgbe_rx_buffer*,unsigned int) ; 
 scalar_t__ FUNC19 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*) ; 
 scalar_t__ FUNC20 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC21 (struct ixgbe_q_vector*,struct sk_buff*) ; 
 unsigned int FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (struct ixgbe_ring*) ; 
 size_t FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 () ; 

__attribute__((used)) static int FUNC32(struct ixgbe_q_vector *q_vector,
			       struct ixgbe_ring *rx_ring,
			       const int budget)
{
	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
	struct ixgbe_adapter *adapter = q_vector->adapter;
#ifdef IXGBE_FCOE
	int ddp_bytes;
	unsigned int mss = 0;
#endif /* IXGBE_FCOE */
	u16 cleaned_count = FUNC11(rx_ring);
	unsigned int xdp_xmit = 0;
	struct xdp_buff xdp;

	xdp.rxq = &rx_ring->xdp_rxq;

	while (FUNC23(total_rx_packets < budget)) {
		union ixgbe_adv_rx_desc *rx_desc;
		struct ixgbe_rx_buffer *rx_buffer;
		struct sk_buff *skb;
		unsigned int size;

		/* return some buffers to hardware, one at a time is too slow */
		if (cleaned_count >= IXGBE_RX_BUFFER_WRITE) {
			FUNC7(rx_ring, cleaned_count);
			cleaned_count = 0;
		}

		rx_desc = FUNC2(rx_ring, rx_ring->next_to_clean);
		size = FUNC22(rx_desc->wb.upper.length);
		if (!size)
			break;

		/* This memory barrier is needed to keep us from reading
		 * any other fields out of the rx_desc until we know the
		 * descriptor has been written back
		 */
		FUNC5();

		rx_buffer = FUNC13(rx_ring, rx_desc, &skb, size);

		/* retrieve a buffer from the ring */
		if (!skb) {
			xdp.data = FUNC24(rx_buffer->page) +
				   rx_buffer->page_offset;
			xdp.data_meta = xdp.data;
			xdp.data_hard_start = xdp.data -
					      FUNC20(rx_ring);
			xdp.data_end = xdp.data + size;

			skb = FUNC17(adapter, rx_ring, &xdp);
		}

		if (FUNC1(skb)) {
			unsigned int xdp_res = -FUNC3(skb);

			if (xdp_res & (IXGBE_XDP_TX | IXGBE_XDP_REDIR)) {
				xdp_xmit |= xdp_res;
				FUNC18(rx_ring, rx_buffer, size);
			} else {
				rx_buffer->pagecnt_bias++;
			}
			total_rx_packets++;
			total_rx_bytes += size;
		} else if (skb) {
			FUNC6(rx_ring, rx_buffer, skb, size);
		} else if (FUNC25(rx_ring)) {
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

		FUNC16(rx_ring, rx_buffer, skb);
		cleaned_count++;

		/* place incomplete frames back on ring for completion */
		if (FUNC14(rx_ring, rx_desc, skb))
			continue;

		/* verify the packet layout is correct */
		if (FUNC9(rx_ring, rx_desc, skb))
			continue;

		/* probably a little skewed due to removing CRC */
		total_rx_bytes += skb->len;

		/* populate checksum, timestamp, VLAN, and protocol */
		FUNC15(rx_ring, rx_desc, skb);

#ifdef IXGBE_FCOE
		/* if ddp, not passing to ULD unless for FCP_RSP or error */
		if (ixgbe_rx_is_fcoe(rx_ring, rx_desc)) {
			ddp_bytes = ixgbe_fcoe_ddp(adapter, rx_desc, skb);
			/* include DDPed FCoE data */
			if (ddp_bytes > 0) {
				if (!mss) {
					mss = rx_ring->netdev->mtu -
						sizeof(struct fcoe_hdr) -
						sizeof(struct fc_frame_header) -
						sizeof(struct fcoe_crc_eof);
					if (mss > 512)
						mss &= ~511;
				}
				total_rx_bytes += ddp_bytes;
				total_rx_packets += DIV_ROUND_UP(ddp_bytes,
								 mss);
			}
			if (!ddp_bytes) {
				dev_kfree_skb_any(skb);
				continue;
			}
		}

#endif /* IXGBE_FCOE */
		FUNC21(q_vector, skb);

		/* update budget accounting */
		total_rx_packets++;
	}

	if (xdp_xmit & IXGBE_XDP_REDIR)
		FUNC31();

	if (xdp_xmit & IXGBE_XDP_TX) {
		struct ixgbe_ring *ring = adapter->xdp_ring[FUNC26()];

		/* Force memory writes to complete before letting h/w
		 * know there are new descriptors to fetch.
		 */
		FUNC29();
		FUNC30(ring->next_to_use, ring->tail);
	}

	FUNC27(&rx_ring->syncp);
	rx_ring->stats.packets += total_rx_packets;
	rx_ring->stats.bytes += total_rx_bytes;
	FUNC28(&rx_ring->syncp);
	q_vector->rx.total_packets += total_rx_packets;
	q_vector->rx.total_bytes += total_rx_bytes;

	return total_rx_packets;
}