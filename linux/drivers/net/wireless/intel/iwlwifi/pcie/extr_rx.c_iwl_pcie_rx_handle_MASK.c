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
typedef  int u32 ;
struct iwl_rb_allocator {int /*<<< orphan*/  req_pending; } ;
struct iwl_trans_pcie {struct iwl_rb_allocator rba; struct iwl_rxq* rxq; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_4__ {scalar_t__ poll; } ;
struct iwl_rxq {int read; int queue_size; int used_count; TYPE_2__ napi; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cr_tail; int /*<<< orphan*/  id; int /*<<< orphan*/  bd; } ;
struct iwl_rx_mem_buffer {int dummy; } ;
struct TYPE_3__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int) ; 
 scalar_t__ IWL_DEVICE_FAMILY_22560 ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int RX_CLAIM_REQ_ALLOC ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,struct iwl_rxq*) ; 
 struct iwl_rx_mem_buffer* FUNC7 (struct iwl_trans*,struct iwl_rxq*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,struct iwl_rxq*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,struct iwl_rxq*,struct iwl_rx_mem_buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_rxq*,struct iwl_rb_allocator*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*,int /*<<< orphan*/ ,struct iwl_rxq*) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*,struct iwl_rxq*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(struct iwl_trans *trans, int queue)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	struct iwl_rxq *rxq;
	u32 r, i, count = 0;
	bool emergency = false;

	if (FUNC3(!trans_pcie->rxq || !trans_pcie->rxq[queue].bd))
		return;

	rxq = &trans_pcie->rxq[queue];

restart:
	FUNC15(&rxq->lock);
	/* uCode's read index (stored in shared DRAM) indicates the last Rx
	 * buffer that the driver may process (last buffer filled by ucode). */
	r = FUNC13(FUNC6(trans, rxq)) & 0x0FFF;
	i = rxq->read;

	/* W/A 9000 device step A0 wrap-around bug */
	r &= (rxq->queue_size - 1);

	/* Rx interrupt, but nothing sent from uCode */
	if (i == r)
		FUNC0(trans, "Q %d: HW = SW = %d\n", rxq->id, r);

	while (i != r) {
		struct iwl_rb_allocator *rba = &trans_pcie->rba;
		struct iwl_rx_mem_buffer *rxb;
		/* number of RBDs still waiting for page allocation */
		u32 rb_pending_alloc =
			FUNC4(&trans_pcie->rba.req_pending) *
			RX_CLAIM_REQ_ALLOC;

		if (FUNC17(rb_pending_alloc >= rxq->queue_size / 2 &&
			     !emergency)) {
			FUNC10(rxq, rba);
			emergency = true;
			FUNC1(trans,
				      "RX path is in emergency. Pending allocations %d\n",
				      rb_pending_alloc);
		}

		FUNC0(trans, "Q %d: HW = %d, SW = %d\n", rxq->id, r, i);

		rxb = FUNC7(trans, rxq, i);
		if (!rxb)
			goto out;

		FUNC9(trans, rxq, rxb, emergency, i);

		i = (i + 1) & (rxq->queue_size - 1);

		/*
		 * If we have RX_CLAIM_REQ_ALLOC released rx buffers -
		 * try to claim the pre-allocated buffers from the allocator.
		 * If not ready - will try to reclaim next time.
		 * There is no need to reschedule work - allocator exits only
		 * on success
		 */
		if (rxq->used_count >= RX_CLAIM_REQ_ALLOC)
			FUNC8(trans, rxq);

		if (rxq->used_count % RX_CLAIM_REQ_ALLOC == 0 && !emergency) {
			/* Add the remaining empty RBDs for allocator use */
			FUNC10(rxq, rba);
		} else if (emergency) {
			count++;
			if (count == 8) {
				count = 0;
				if (rb_pending_alloc < rxq->queue_size / 3) {
					FUNC1(trans,
						      "RX path exited emergency. Pending allocations %d\n",
						      rb_pending_alloc);
					emergency = false;
				}

				rxq->read = i;
				FUNC16(&rxq->lock);
				FUNC11(trans, GFP_ATOMIC, rxq);
				FUNC12(trans, rxq);
				goto restart;
			}
		}
	}
out:
	/* Backtrack one entry */
	rxq->read = i;
	/* update cr tail with the rxq read pointer */
	if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22560)
		*rxq->cr_tail = FUNC5(r);
	FUNC16(&rxq->lock);

	/*
	 * handle a case where in emergency there are some unallocated RBDs.
	 * those RBDs are in the used list, but are not tracked by the queue's
	 * used_count which counts allocator owned RBDs.
	 * unallocated emergency RBDs must be allocated on exit, otherwise
	 * when called again the function may not be in emergency mode and
	 * they will be handed to the allocator with no tracking in the RBD
	 * allocator counters, which will lead to them never being claimed back
	 * by the queue.
	 * by allocating them here, they are now in the queue free list, and
	 * will be restocked by the next call of iwl_pcie_rxq_restock.
	 */
	if (FUNC17(emergency && count))
		FUNC11(trans, GFP_ATOMIC, rxq);

	if (rxq->napi.poll)
		FUNC14(&rxq->napi, false);

	FUNC12(trans, rxq);
}