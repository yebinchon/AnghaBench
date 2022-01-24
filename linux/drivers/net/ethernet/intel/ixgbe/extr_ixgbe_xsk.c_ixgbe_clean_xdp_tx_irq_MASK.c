#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int status; } ;
union ixgbe_adv_tx_desc {TYPE_1__ wb; } ;
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct xdp_umem {int dummy; } ;
struct ixgbe_tx_buffer {int /*<<< orphan*/ * xdpf; scalar_t__ gso_segs; scalar_t__ bytecount; } ;
struct TYPE_5__ {unsigned int bytes; unsigned int packets; } ;
struct ixgbe_ring {size_t next_to_clean; size_t next_to_use; size_t count; struct xdp_umem* xsk_umem; int /*<<< orphan*/  syncp; TYPE_2__ stats; struct ixgbe_tx_buffer* tx_buffer_info; } ;
struct TYPE_6__ {unsigned int total_bytes; unsigned int total_packets; int /*<<< orphan*/  work_limit; } ;
struct ixgbe_q_vector {TYPE_3__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_TXD_STAT_DD ; 
 union ixgbe_adv_tx_desc* FUNC0 (struct ixgbe_ring*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_ring*,struct ixgbe_tx_buffer*) ; 
 int FUNC3 (struct ixgbe_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union ixgbe_adv_tx_desc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct xdp_umem*) ; 
 int /*<<< orphan*/  FUNC9 (struct xdp_umem*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct xdp_umem*) ; 

bool FUNC11(struct ixgbe_q_vector *q_vector,
			    struct ixgbe_ring *tx_ring, int napi_budget)
{
	u16 ntc = tx_ring->next_to_clean, ntu = tx_ring->next_to_use;
	unsigned int total_packets = 0, total_bytes = 0;
	struct xdp_umem *umem = tx_ring->xsk_umem;
	union ixgbe_adv_tx_desc *tx_desc;
	struct ixgbe_tx_buffer *tx_bi;
	u32 xsk_frames = 0;

	tx_bi = &tx_ring->tx_buffer_info[ntc];
	tx_desc = FUNC0(tx_ring, ntc);

	while (ntc != ntu) {
		if (!(tx_desc->wb.status & FUNC1(IXGBE_TXD_STAT_DD)))
			break;

		total_bytes += tx_bi->bytecount;
		total_packets += tx_bi->gso_segs;

		if (tx_bi->xdpf)
			FUNC2(tx_ring, tx_bi);
		else
			xsk_frames++;

		tx_bi->xdpf = NULL;

		tx_bi++;
		tx_desc++;
		ntc++;
		if (FUNC7(ntc == tx_ring->count)) {
			ntc = 0;
			tx_bi = tx_ring->tx_buffer_info;
			tx_desc = FUNC0(tx_ring, 0);
		}

		/* issue prefetch for next Tx descriptor */
		FUNC4(tx_desc);
	}

	tx_ring->next_to_clean = ntc;

	FUNC5(&tx_ring->syncp);
	tx_ring->stats.bytes += total_bytes;
	tx_ring->stats.packets += total_packets;
	FUNC6(&tx_ring->syncp);
	q_vector->tx.total_bytes += total_bytes;
	q_vector->tx.total_packets += total_packets;

	if (xsk_frames)
		FUNC9(umem, xsk_frames);

	if (FUNC10(tx_ring->xsk_umem))
		FUNC8(tx_ring->xsk_umem);

	return FUNC3(tx_ring, q_vector->tx.work_limit);
}