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
typedef  int /*<<< orphan*/  u16 ;
struct efx_rx_queue {unsigned int removed_count; unsigned int scatter_n; unsigned int ptr_mask; } ;
struct efx_nic {int /*<<< orphan*/  reset_pending; } ;
struct efx_channel {void* channel; int irq_mod_score; int /*<<< orphan*/  n_rx_mcast_mismatch; struct efx_nic* efx; } ;
typedef  int /*<<< orphan*/  efx_qword_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EFX_RX_PKT_CSUMMED ; 
 int /*<<< orphan*/  EFX_RX_PKT_DISCARD ; 
 int /*<<< orphan*/  EFX_RX_PKT_TCP ; 
#define  FSE_AZ_RX_EV_HDR_TYPE_OTHER 131 
#define  FSE_CZ_RX_EV_HDR_TYPE_IPV4V6_OTHER 130 
#define  FSE_CZ_RX_EV_HDR_TYPE_IPV4V6_TCP 129 
#define  FSE_CZ_RX_EV_HDR_TYPE_IPV4V6_UDP 128 
 int /*<<< orphan*/  FSF_AZ_RX_EV_BYTE_CNT ; 
 int /*<<< orphan*/  FSF_AZ_RX_EV_DESC_PTR ; 
 int /*<<< orphan*/  FSF_AZ_RX_EV_HDR_TYPE ; 
 int /*<<< orphan*/  FSF_AZ_RX_EV_JUMBO_CONT ; 
 int /*<<< orphan*/  FSF_AZ_RX_EV_MCAST_HASH_MATCH ; 
 int /*<<< orphan*/  FSF_AZ_RX_EV_MCAST_PKT ; 
 int /*<<< orphan*/  FSF_AZ_RX_EV_PKT_OK ; 
 int /*<<< orphan*/  FSF_AZ_RX_EV_Q_LABEL ; 
 int /*<<< orphan*/  FSF_AZ_RX_EV_SOP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct efx_rx_queue* FUNC3 (struct efx_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_rx_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_rx_queue*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_rx_queue*,int,int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct efx_channel *channel, const efx_qword_t *event)
{
	unsigned int rx_ev_desc_ptr, rx_ev_byte_cnt;
	unsigned int rx_ev_hdr_type, rx_ev_mcast_pkt;
	unsigned expected_ptr;
	bool rx_ev_pkt_ok, rx_ev_sop, rx_ev_cont;
	u16 flags;
	struct efx_rx_queue *rx_queue;
	struct efx_nic *efx = channel->efx;

	if (FUNC8(FUNC1(efx->reset_pending)))
		return;

	rx_ev_cont = FUNC0(*event, FSF_AZ_RX_EV_JUMBO_CONT);
	rx_ev_sop = FUNC0(*event, FSF_AZ_RX_EV_SOP);
	FUNC2(FUNC0(*event, FSF_AZ_RX_EV_Q_LABEL) !=
		channel->channel);

	rx_queue = FUNC3(channel);

	rx_ev_desc_ptr = FUNC0(*event, FSF_AZ_RX_EV_DESC_PTR);
	expected_ptr = ((rx_queue->removed_count + rx_queue->scatter_n) &
			rx_queue->ptr_mask);

	/* Check for partial drops and other errors */
	if (FUNC8(rx_ev_desc_ptr != expected_ptr) ||
	    FUNC8(rx_ev_sop != (rx_queue->scatter_n == 0))) {
		if (rx_ev_desc_ptr != expected_ptr &&
		    !FUNC4(rx_queue, rx_ev_desc_ptr))
			return;

		/* Discard all pending fragments */
		if (rx_queue->scatter_n) {
			FUNC6(
				rx_queue,
				rx_queue->removed_count & rx_queue->ptr_mask,
				rx_queue->scatter_n, 0, EFX_RX_PKT_DISCARD);
			rx_queue->removed_count += rx_queue->scatter_n;
			rx_queue->scatter_n = 0;
		}

		/* Return if there is no new fragment */
		if (rx_ev_desc_ptr != expected_ptr)
			return;

		/* Discard new fragment if not SOP */
		if (!rx_ev_sop) {
			FUNC6(
				rx_queue,
				rx_queue->removed_count & rx_queue->ptr_mask,
				1, 0, EFX_RX_PKT_DISCARD);
			++rx_queue->removed_count;
			return;
		}
	}

	++rx_queue->scatter_n;
	if (rx_ev_cont)
		return;

	rx_ev_byte_cnt = FUNC0(*event, FSF_AZ_RX_EV_BYTE_CNT);
	rx_ev_pkt_ok = FUNC0(*event, FSF_AZ_RX_EV_PKT_OK);
	rx_ev_hdr_type = FUNC0(*event, FSF_AZ_RX_EV_HDR_TYPE);

	if (FUNC7(rx_ev_pkt_ok)) {
		/* If packet is marked as OK then we can rely on the
		 * hardware checksum and classification.
		 */
		flags = 0;
		switch (rx_ev_hdr_type) {
		case FSE_CZ_RX_EV_HDR_TYPE_IPV4V6_TCP:
			flags |= EFX_RX_PKT_TCP;
			/* fall through */
		case FSE_CZ_RX_EV_HDR_TYPE_IPV4V6_UDP:
			flags |= EFX_RX_PKT_CSUMMED;
			/* fall through */
		case FSE_CZ_RX_EV_HDR_TYPE_IPV4V6_OTHER:
		case FSE_AZ_RX_EV_HDR_TYPE_OTHER:
			break;
		}
	} else {
		flags = FUNC5(rx_queue, event);
	}

	/* Detect multicast packets that didn't match the filter */
	rx_ev_mcast_pkt = FUNC0(*event, FSF_AZ_RX_EV_MCAST_PKT);
	if (rx_ev_mcast_pkt) {
		unsigned int rx_ev_mcast_hash_match =
			FUNC0(*event, FSF_AZ_RX_EV_MCAST_HASH_MATCH);

		if (FUNC8(!rx_ev_mcast_hash_match)) {
			++channel->n_rx_mcast_mismatch;
			flags |= EFX_RX_PKT_DISCARD;
		}
	}

	channel->irq_mod_score += 2;

	/* Handle received packet */
	FUNC6(rx_queue,
		      rx_queue->removed_count & rx_queue->ptr_mask,
		      rx_queue->scatter_n, rx_ev_byte_cnt, flags);
	rx_queue->removed_count += rx_queue->scatter_n;
	rx_queue->scatter_n = 0;
}