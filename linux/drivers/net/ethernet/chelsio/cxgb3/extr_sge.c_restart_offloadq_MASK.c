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
struct sk_buff {unsigned int priority; scalar_t__ head; } ;
struct sge_txq {unsigned int size; unsigned int in_use; unsigned int gen; unsigned int pidx; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  sendq; int /*<<< orphan*/  stops; } ;
struct sge_qset {int /*<<< orphan*/  txq_stopped; int /*<<< orphan*/  netdev; struct sge_txq* txq; } ;
struct port_info {struct adapter* adapter; } ;
struct adapter {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_KDOORBELL ; 
 int F_SELEGRCNTX ; 
 size_t TXQ_LAST_PKT_DB ; 
 size_t TXQ_OFLD ; 
 size_t TXQ_RUNNING ; 
 int /*<<< orphan*/  TX_RECLAIM_CHUNK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct port_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,struct sge_txq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sge_txq*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*,struct sk_buff*,struct sge_txq*,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(unsigned long data)
{
	struct sk_buff *skb;
	struct sge_qset *qs = (struct sge_qset *)data;
	struct sge_txq *q = &qs->txq[TXQ_OFLD];
	const struct port_info *pi = FUNC5(qs->netdev);
	struct adapter *adap = pi->adapter;
	unsigned int written = 0;

	FUNC11(&q->lock);
again:	FUNC6(adap, q, TX_RECLAIM_CHUNK);

	while ((skb = FUNC9(&q->sendq)) != NULL) {
		unsigned int gen, pidx;
		unsigned int ndesc = skb->priority;

		if (FUNC15(q->size - q->in_use < ndesc)) {
			FUNC7(TXQ_OFLD, &qs->txq_stopped);
			FUNC10();

			if (FUNC8(q) &&
			    FUNC14(TXQ_OFLD, &qs->txq_stopped))
				goto again;
			q->stops++;
			break;
		}

		if (!FUNC2(skb) &&
		    FUNC4(adap->pdev, skb, (dma_addr_t *)skb->head))
			break;

		gen = q->gen;
		q->in_use += ndesc;
		pidx = q->pidx;
		q->pidx += ndesc;
		written += ndesc;
		if (q->pidx >= q->size) {
			q->pidx -= q->size;
			q->gen ^= 1;
		}
		FUNC1(skb, &q->sendq);
		FUNC12(&q->lock);

		FUNC17(adap, skb, q, pidx, gen, ndesc,
			      (dma_addr_t *)skb->head);
		FUNC11(&q->lock);
	}
	FUNC12(&q->lock);

#if USE_GTS
	set_bit(TXQ_RUNNING, &q->flags);
	set_bit(TXQ_LAST_PKT_DB, &q->flags);
#endif
	FUNC16();
	if (FUNC3(written))
		FUNC13(adap, A_SG_KDOORBELL,
			     F_SELEGRCNTX | FUNC0(q->cntxt_id));
}