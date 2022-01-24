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
struct TYPE_5__ {int /*<<< orphan*/  status_error_len; } ;
struct TYPE_6__ {TYPE_1__ qword1; } ;
union i40e_rx_desc {TYPE_2__ wb; } ;
typedef  unsigned int u64 ;
typedef  scalar_t__ u16 ;
struct xdp_buff {scalar_t__ data; scalar_t__ data_end; scalar_t__ data_hard_start; scalar_t__ data_meta; int /*<<< orphan*/ * rxq; } ;
struct sk_buff {scalar_t__ len; } ;
struct i40e_rx_buffer {int /*<<< orphan*/  pagecnt_bias; scalar_t__ page_offset; int /*<<< orphan*/  page; } ;
struct TYPE_7__ {int /*<<< orphan*/  alloc_buff_failed; } ;
struct i40e_ring {struct sk_buff* skb; TYPE_4__* q_vector; TYPE_3__ rx_stats; int /*<<< orphan*/  next_to_clean; int /*<<< orphan*/  xdp_rxq; } ;
struct TYPE_8__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i40e_ring*) ; 
 unsigned int I40E_RXD_QW1_LENGTH_PBUF_MASK ; 
 unsigned int I40E_RXD_QW1_LENGTH_PBUF_SHIFT ; 
 scalar_t__ I40E_RX_BUFFER_WRITE ; 
 union i40e_rx_desc* FUNC1 (struct i40e_ring*,int /*<<< orphan*/ ) ; 
 unsigned int I40E_XDP_REDIR ; 
 unsigned int I40E_XDP_TX ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  clean_rx_irq ; 
 int /*<<< orphan*/  clean_rx_irq_rx ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_ring*,struct i40e_rx_buffer*,struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC6 (struct i40e_ring*,scalar_t__) ; 
 struct sk_buff* FUNC7 (struct i40e_ring*,struct i40e_rx_buffer*,struct xdp_buff*) ; 
 struct i40e_rx_buffer* FUNC8 (struct i40e_ring*,union i40e_rx_desc*,unsigned int) ; 
 scalar_t__ FUNC9 (struct i40e_ring*,struct sk_buff*,union i40e_rx_desc*) ; 
 struct sk_buff* FUNC10 (struct i40e_ring*,struct i40e_rx_buffer*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct i40e_ring*,unsigned int) ; 
 struct i40e_rx_buffer* FUNC12 (struct i40e_ring*,unsigned int) ; 
 scalar_t__ FUNC13 (struct i40e_ring*,union i40e_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct i40e_ring*,union i40e_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct i40e_ring*,struct i40e_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (struct i40e_ring*,struct i40e_rx_buffer*) ; 
 struct sk_buff* FUNC17 (struct i40e_ring*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct i40e_ring*,struct i40e_rx_buffer*,unsigned int) ; 
 scalar_t__ FUNC19 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct i40e_ring*,union i40e_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct i40e_ring*,unsigned int,unsigned int) ; 
 unsigned int FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (struct i40e_ring*) ; 
 scalar_t__ FUNC27 (struct i40e_rx_buffer*) ; 

__attribute__((used)) static int FUNC28(struct i40e_ring *rx_ring, int budget)
{
	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
	struct sk_buff *skb = rx_ring->skb;
	u16 cleaned_count = FUNC0(rx_ring);
	unsigned int xdp_xmit = 0;
	bool failure = false;
	struct xdp_buff xdp;

	xdp.rxq = &rx_ring->xdp_rxq;

	while (FUNC23(total_rx_packets < (unsigned int)budget)) {
		struct i40e_rx_buffer *rx_buffer;
		union i40e_rx_desc *rx_desc;
		unsigned int size;
		u64 qword;

		/* return some buffers to hardware, one at a time is too slow */
		if (cleaned_count >= I40E_RX_BUFFER_WRITE) {
			failure = failure ||
				  FUNC6(rx_ring, cleaned_count);
			cleaned_count = 0;
		}

		rx_desc = FUNC1(rx_ring, rx_ring->next_to_clean);

		/* status_error_len will always be zero for unused descriptors
		 * because it's cleared in cleanup, and overlaps with hdr_addr
		 * which is always zero because packet split isn't used, if the
		 * hardware wrote DD then the length will be non-zero
		 */
		qword = FUNC22(rx_desc->wb.qword1.status_error_len);

		/* This memory barrier is needed to keep us from reading
		 * any other fields out of the rx_desc until we have
		 * verified the descriptor has been written back.
		 */
		FUNC4();

		rx_buffer = FUNC8(rx_ring, rx_desc,
							  qword);
		if (FUNC27(rx_buffer)) {
			FUNC16(rx_ring, rx_buffer);
			cleaned_count++;
			continue;
		}

		size = (qword & I40E_RXD_QW1_LENGTH_PBUF_MASK) >>
		       I40E_RXD_QW1_LENGTH_PBUF_SHIFT;
		if (!size)
			break;

		FUNC20(clean_rx_irq, rx_ring, rx_desc, skb);
		rx_buffer = FUNC12(rx_ring, size);

		/* retrieve a buffer from the ring */
		if (!skb) {
			xdp.data = FUNC25(rx_buffer->page) +
				   rx_buffer->page_offset;
			xdp.data_meta = xdp.data;
			xdp.data_hard_start = xdp.data -
					      FUNC19(rx_ring);
			xdp.data_end = xdp.data + size;

			skb = FUNC17(rx_ring, &xdp);
		}

		if (FUNC2(skb)) {
			unsigned int xdp_res = -FUNC3(skb);

			if (xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR)) {
				xdp_xmit |= xdp_res;
				FUNC18(rx_ring, rx_buffer, size);
			} else {
				rx_buffer->pagecnt_bias++;
			}
			total_rx_bytes += size;
			total_rx_packets++;
		} else if (skb) {
			FUNC5(rx_ring, rx_buffer, skb, size);
		} else if (FUNC26(rx_ring)) {
			skb = FUNC7(rx_ring, rx_buffer, &xdp);
		} else {
			skb = FUNC10(rx_ring, rx_buffer, &xdp);
		}

		/* exit if we failed to retrieve a buffer */
		if (!skb) {
			rx_ring->rx_stats.alloc_buff_failed++;
			rx_buffer->pagecnt_bias++;
			break;
		}

		FUNC15(rx_ring, rx_buffer);
		cleaned_count++;

		if (FUNC13(rx_ring, rx_desc, skb))
			continue;

		if (FUNC9(rx_ring, skb, rx_desc)) {
			skb = NULL;
			continue;
		}

		/* probably a little skewed due to removing CRC */
		total_rx_bytes += skb->len;

		/* populate checksum, VLAN, and protocol */
		FUNC14(rx_ring, rx_desc, skb);

		FUNC20(clean_rx_irq_rx, rx_ring, rx_desc, skb);
		FUNC24(&rx_ring->q_vector->napi, skb);
		skb = NULL;

		/* update budget accounting */
		total_rx_packets++;
	}

	FUNC11(rx_ring, xdp_xmit);
	rx_ring->skb = skb;

	FUNC21(rx_ring, total_rx_bytes, total_rx_packets);

	/* guarantee a trip back through this routine if there was a failure */
	return failure ? budget : (int)total_rx_packets;
}