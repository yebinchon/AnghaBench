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
typedef  int /*<<< orphan*/  u16 ;
struct xdp_buff {int /*<<< orphan*/  handle; int /*<<< orphan*/ * data; scalar_t__ data_end; int /*<<< orphan*/ * data_hard_start; int /*<<< orphan*/ * data_meta; int /*<<< orphan*/ * rxq; } ;
struct sk_buff {scalar_t__ len; } ;
struct i40e_rx_buffer {int /*<<< orphan*/ * addr; int /*<<< orphan*/  handle; } ;
struct TYPE_7__ {int /*<<< orphan*/  alloc_buff_failed; } ;
struct i40e_ring {scalar_t__ next_to_clean; scalar_t__ next_to_use; int /*<<< orphan*/  xsk_umem; TYPE_4__* q_vector; TYPE_3__ rx_stats; int /*<<< orphan*/  xdp_rxq; } ;
struct TYPE_8__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40e_ring*) ; 
 unsigned int I40E_RXD_QW1_LENGTH_PBUF_MASK ; 
 unsigned int I40E_RXD_QW1_LENGTH_PBUF_SHIFT ; 
 int /*<<< orphan*/  I40E_RX_BUFFER_WRITE ; 
 union i40e_rx_desc* FUNC1 (struct i40e_ring*,scalar_t__) ; 
 unsigned int I40E_XDP_REDIR ; 
 unsigned int I40E_XDP_TX ; 
 int /*<<< orphan*/ * XDP_PACKET_HEADROOM ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_ring*,int /*<<< orphan*/ ) ; 
 struct i40e_rx_buffer* FUNC5 (struct i40e_ring*,union i40e_rx_desc*,unsigned int) ; 
 struct sk_buff* FUNC6 (struct i40e_ring*,struct i40e_rx_buffer*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_ring*,unsigned int) ; 
 struct i40e_rx_buffer* FUNC8 (struct i40e_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC10 (struct i40e_ring*,union i40e_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct i40e_ring*,struct i40e_rx_buffer*) ; 
 unsigned int FUNC12 (struct i40e_ring*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct i40e_ring*,unsigned int,unsigned int) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct i40e_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 

int FUNC21(struct i40e_ring *rx_ring, int budget)
{
	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
	u16 cleaned_count = FUNC0(rx_ring);
	unsigned int xdp_res, xdp_xmit = 0;
	bool failure = false;
	struct sk_buff *skb;
	struct xdp_buff xdp;

	xdp.rxq = &rx_ring->xdp_rxq;

	while (FUNC15(total_rx_packets < (unsigned int)budget)) {
		struct i40e_rx_buffer *bi;
		union i40e_rx_desc *rx_desc;
		unsigned int size;
		u64 qword;

		if (cleaned_count >= I40E_RX_BUFFER_WRITE) {
			failure = failure ||
				  !FUNC4(rx_ring,
								 cleaned_count);
			cleaned_count = 0;
		}

		rx_desc = FUNC1(rx_ring, rx_ring->next_to_clean);
		qword = FUNC14(rx_desc->wb.qword1.status_error_len);

		/* This memory barrier is needed to keep us from reading
		 * any other fields out of the rx_desc until we have
		 * verified the descriptor has been written back.
		 */
		FUNC2();

		bi = FUNC5(rx_ring, rx_desc,
						   qword);
		if (FUNC17(bi)) {
			FUNC11(rx_ring, bi);
			cleaned_count++;
			continue;
		}

		size = (qword & I40E_RXD_QW1_LENGTH_PBUF_MASK) >>
		       I40E_RXD_QW1_LENGTH_PBUF_SHIFT;
		if (!size)
			break;

		bi = FUNC8(rx_ring, size);
		xdp.data = bi->addr;
		xdp.data_meta = xdp.data;
		xdp.data_hard_start = xdp.data - XDP_PACKET_HEADROOM;
		xdp.data_end = xdp.data + size;
		xdp.handle = bi->handle;

		xdp_res = FUNC12(rx_ring, &xdp);
		if (xdp_res) {
			if (xdp_res & (I40E_XDP_TX | I40E_XDP_REDIR)) {
				xdp_xmit |= xdp_res;
				bi->addr = NULL;
			} else {
				FUNC11(rx_ring, bi);
			}

			total_rx_bytes += size;
			total_rx_packets++;

			cleaned_count++;
			FUNC9(rx_ring);
			continue;
		}

		/* XDP_PASS path */

		/* NB! We are not checking for errors using
		 * i40e_test_staterr with
		 * BIT(I40E_RXD_QW1_ERROR_SHIFT). This is due to that
		 * SBP is *not* set in PRT_SBPVSI (default not set).
		 */
		skb = FUNC6(rx_ring, bi, &xdp);
		if (!skb) {
			rx_ring->rx_stats.alloc_buff_failed++;
			break;
		}

		cleaned_count++;
		FUNC9(rx_ring);

		if (FUNC3(skb))
			continue;

		total_rx_bytes += skb->len;
		total_rx_packets++;

		FUNC10(rx_ring, rx_desc, skb);
		FUNC16(&rx_ring->q_vector->napi, skb);
	}

	FUNC7(rx_ring, xdp_xmit);
	FUNC13(rx_ring, total_rx_bytes, total_rx_packets);

	if (FUNC20(rx_ring->xsk_umem)) {
		if (failure || rx_ring->next_to_clean == rx_ring->next_to_use)
			FUNC19(rx_ring->xsk_umem);
		else
			FUNC18(rx_ring->xsk_umem);

		return (int)total_rx_packets;
	}
	return failure ? budget : (int)total_rx_packets;
}