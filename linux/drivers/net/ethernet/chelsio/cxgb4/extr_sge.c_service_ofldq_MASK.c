#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {unsigned int priority; int /*<<< orphan*/  destructor; int /*<<< orphan*/  dev; scalar_t__ head; scalar_t__ data; } ;
struct sge_txq {size_t pidx; int size; TYPE_1__* sdesc; int /*<<< orphan*/ * desc; scalar_t__ stat; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct sge_uld_txq {int service_ofldq_running; struct sge_txq q; TYPE_3__* adap; TYPE_2__ sendq; int /*<<< orphan*/  full; } ;
struct fw_wr_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/ * port; int /*<<< orphan*/  pdev_dev; } ;
struct TYPE_6__ {struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TXQ_STOP_THRES ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sge_txq*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct sge_txq*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct sge_txq*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sge_txq*,void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  deferred_unmap_destructor ; 
 unsigned int FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,struct sge_txq*,void*,int) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sge_uld_txq*,struct fw_wr_hdr*) ; 
 struct sk_buff* FUNC13 (TYPE_2__*) ; 
 int FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sge_txq*,unsigned int) ; 
 unsigned int FUNC18 (struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC19 (struct sge_uld_txq*) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static void FUNC21(struct sge_uld_txq *q)
{
	u64 *pos, *before, *end;
	int credits;
	struct sk_buff *skb;
	struct sge_txq *txq;
	unsigned int left;
	unsigned int written = 0;
	unsigned int flits, ndesc;

	/* If another thread is currently in service_ofldq() processing the
	 * Pending Send Queue then there's nothing to do. Otherwise, flag
	 * that we're doing the work and continue.  Examining/modifying
	 * the Offload Queue boolean "service_ofldq_running" must be done
	 * while holding the Pending Send Queue Lock.
	 */
	if (q->service_ofldq_running)
		return;
	q->service_ofldq_running = true;

	while ((skb = FUNC13(&q->sendq)) != NULL && !q->full) {
		/* We drop the lock while we're working with the skb at the
		 * head of the Pending Send Queue.  This allows more skbs to
		 * be added to the Pending Send Queue while we're working on
		 * this one.  We don't need to lock to guard the TX Ring
		 * updates because only one thread of execution is ever
		 * allowed into service_ofldq() at a time.
		 */
		FUNC16(&q->sendq.lock);

		FUNC4(q->adap, &q->q, false);

		flits = skb->priority;                /* previously saved */
		ndesc = FUNC7(flits);
		credits = FUNC18(&q->q) - ndesc;
		FUNC0(credits < 0);
		if (FUNC20(credits < TXQ_STOP_THRES))
			FUNC12(q, (struct fw_wr_hdr *)skb->data);

		pos = (u64 *)&q->q.desc[q->q.pidx];
		if (FUNC9(skb))
			FUNC2(skb, &q->q, pos);
		else if (FUNC3(q->adap->pdev_dev, skb,
				       (dma_addr_t *)skb->head)) {
			FUNC19(q);
			FUNC15(&q->sendq.lock);
			break;
		} else {
			int last_desc, hdr_len = FUNC14(skb);

			/* The WR headers  may not fit within one descriptor.
			 * So we need to deal with wrap-around here.
			 */
			before = (u64 *)pos;
			end = (u64 *)pos + flits;
			txq = &q->q;
			pos = (void *)FUNC8(skb, &q->q,
							   (void *)pos,
							   hdr_len);
			if (before > (u64 *)pos) {
				left = (u8 *)end - (u8 *)txq->stat;
				end = (void *)txq->desc + left;
			}

			/* If current position is already at the end of the
			 * ofld queue, reset the current to point to
			 * start of the queue and update the end ptr as well.
			 */
			if (pos == (u64 *)txq->stat) {
				left = (u8 *)end - (u8 *)txq->stat;
				end = (void *)txq->desc + left;
				pos = (void *)txq->desc;
			}

			FUNC6(skb, &q->q, (void *)pos,
					end, hdr_len,
					(dma_addr_t *)skb->head);
#ifdef CONFIG_NEED_DMA_MAP_STATE
			skb->dev = q->adap->port[0];
			skb->destructor = deferred_unmap_destructor;
#endif
			last_desc = q->q.pidx + ndesc - 1;
			if (last_desc >= q->q.size)
				last_desc -= q->q.size;
			q->q.sdesc[last_desc].skb = skb;
		}

		FUNC17(&q->q, ndesc);
		written += ndesc;
		if (FUNC20(written > 32)) {
			FUNC5(q->adap, &q->q, written);
			written = 0;
		}

		/* Reacquire the Pending Send Queue Lock so we can unlink the
		 * skb we've just successfully transferred to the TX Ring and
		 * loop for the next skb which may be at the head of the
		 * Pending Send Queue.
		 */
		FUNC15(&q->sendq.lock);
		FUNC1(skb, &q->sendq);
		if (FUNC9(skb))
			FUNC10(skb);
	}
	if (FUNC11(written))
		FUNC5(q->adap, &q->q, written);

	/*Indicate that no thread is processing the Pending Send Queue
	 * currently.
	 */
	q->service_ofldq_running = false;
}