#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  size_t u16 ;
struct net_device {int dummy; } ;
struct mlx4_err_cqe {int /*<<< orphan*/  syndrome; int /*<<< orphan*/  vendor_err_syndrome; } ;
struct mlx4_en_tx_ring {int size_mask; int (* free_tx_desc ) (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,size_t,int /*<<< orphan*/ ,int) ;int size; int /*<<< orphan*/  wake_queue; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  cons; int /*<<< orphan*/  last_nr_txbb; TYPE_1__* tx_info; } ;
struct mlx4_en_priv {int cqe_factor; int tx_work_limit; int /*<<< orphan*/  cqe_size; int /*<<< orphan*/  port_up; struct mlx4_en_tx_ring*** tx_ring; } ;
struct mlx4_cq {int cons_index; } ;
struct mlx4_en_cq {size_t type; size_t ring; int size; struct mlx4_cqe* buf; struct mlx4_cq mcq; } ;
struct mlx4_cqe {int owner_sr_opcode; int /*<<< orphan*/  wqe_index; } ;
struct TYPE_2__ {int ts_requested; scalar_t__ nr_bytes; } ;

/* Variables and functions */
 int MLX4_CQE_OPCODE_ERROR ; 
 int MLX4_CQE_OPCODE_MASK ; 
 int MLX4_CQE_OWNER_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t TX_XDP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_en_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_cq*) ; 
 struct mlx4_cqe* FUNC7 (struct mlx4_cqe*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_cqe*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_en_tx_ring*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,size_t,int) ; 
 struct mlx4_en_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 

bool FUNC19(struct net_device *dev,
			   struct mlx4_en_cq *cq, int napi_budget)
{
	struct mlx4_en_priv *priv = FUNC11(dev);
	struct mlx4_cq *mcq = &cq->mcq;
	struct mlx4_en_tx_ring *ring = priv->tx_ring[cq->type][cq->ring];
	struct mlx4_cqe *cqe;
	u16 index, ring_index, stamp_index;
	u32 txbbs_skipped = 0;
	u32 txbbs_stamp = 0;
	u32 cons_index = mcq->cons_index;
	int size = cq->size;
	u32 size_mask = ring->size_mask;
	struct mlx4_cqe *buf = cq->buf;
	u32 packets = 0;
	u32 bytes = 0;
	int factor = priv->cqe_factor;
	int done = 0;
	int budget = priv->tx_work_limit;
	u32 last_nr_txbb;
	u32 ring_cons;

	if (FUNC17(!priv->port_up))
		return true;

	FUNC13(ring->tx_queue);

	index = cons_index & size_mask;
	cqe = FUNC7(buf, index, priv->cqe_size) + factor;
	last_nr_txbb = FUNC0(ring->last_nr_txbb);
	ring_cons = FUNC0(ring->cons);
	ring_index = ring_cons & size_mask;
	stamp_index = ring_index;

	/* Process all completed CQEs */
	while (FUNC2(cqe->owner_sr_opcode & MLX4_CQE_OWNER_MASK,
			cons_index & size) && (done < budget)) {
		u16 new_index;

		/*
		 * make sure we read the CQE after we read the
		 * ownership bit
		 */
		FUNC4();

		if (FUNC17((cqe->owner_sr_opcode & MLX4_CQE_OPCODE_MASK) ==
			     MLX4_CQE_OPCODE_ERROR)) {
			struct mlx4_err_cqe *cqe_err = (struct mlx4_err_cqe *)cqe;

			FUNC5(priv, "CQE error - vendor syndrome: 0x%x syndrome: 0x%x\n",
			       cqe_err->vendor_err_syndrome,
			       cqe_err->syndrome);
		}

		/* Skip over last polled CQE */
		new_index = FUNC3(cqe->wqe_index) & size_mask;

		do {
			u64 timestamp = 0;

			txbbs_skipped += last_nr_txbb;
			ring_index = (ring_index + last_nr_txbb) & size_mask;

			if (FUNC17(ring->tx_info[ring_index].ts_requested))
				timestamp = FUNC8(cqe);

			/* free next descriptor */
			last_nr_txbb = ring->free_tx_desc(
					priv, ring, ring_index,
					timestamp, napi_budget);

			FUNC10(priv, ring, stamp_index,
					  !!((ring_cons + txbbs_stamp) &
						ring->size));
			stamp_index = ring_index;
			txbbs_stamp = txbbs_skipped;
			packets++;
			bytes += ring->tx_info[ring_index].nr_bytes;
		} while ((++done < budget) && (ring_index != new_index));

		++cons_index;
		index = cons_index & size_mask;
		cqe = FUNC7(buf, index, priv->cqe_size) + factor;
	}

	/*
	 * To prevent CQ overflow we first update CQ consumer and only then
	 * the ring consumer.
	 */
	mcq->cons_index = cons_index;
	FUNC6(mcq);
	FUNC18();

	/* we want to dirty this cache line once */
	FUNC1(ring->last_nr_txbb, last_nr_txbb);
	FUNC1(ring->cons, ring_cons + txbbs_skipped);

	if (cq->type == TX_XDP)
		return done < budget;

	FUNC12(ring->tx_queue, packets, bytes);

	/* Wakeup Tx queue if this stopped, and ring is not full.
	 */
	if (FUNC14(ring->tx_queue) &&
	    !FUNC9(ring)) {
		FUNC15(ring->tx_queue);
		ring->wake_queue++;
	}

	return done < budget;
}