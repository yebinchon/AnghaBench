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
struct sge_txq {unsigned int gen; unsigned int in_use; unsigned int pidx; unsigned int size; int /*<<< orphan*/  lock; } ;
struct adapter {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  TXQ_OFLD ; 
 int /*<<< orphan*/  TX_RECLAIM_CHUNK ; 
 unsigned int FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct adapter*,struct sge_txq*,struct sk_buff*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,struct sge_txq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,struct sk_buff*,struct sge_txq*,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct adapter *adap, struct sge_txq *q,
		     struct sk_buff *skb)
{
	int ret;
	unsigned int ndesc = FUNC0(skb), pidx, gen;

	FUNC6(&q->lock);
again:	FUNC5(adap, q, TX_RECLAIM_CHUNK);

	ret = FUNC1(adap, q, skb, ndesc, TXQ_OFLD);
	if (FUNC8(ret)) {
		if (ret == 1) {
			skb->priority = ndesc;	/* save for restart */
			FUNC7(&q->lock);
			return NET_XMIT_CN;
		}
		goto again;
	}

	if (!FUNC3(skb) &&
	    FUNC4(adap->pdev, skb, (dma_addr_t *)skb->head)) {
		FUNC7(&q->lock);
		return NET_XMIT_SUCCESS;
	}

	gen = q->gen;
	q->in_use += ndesc;
	pidx = q->pidx;
	q->pidx += ndesc;
	if (q->pidx >= q->size) {
		q->pidx -= q->size;
		q->gen ^= 1;
	}
	FUNC7(&q->lock);

	FUNC9(adap, skb, q, pidx, gen, ndesc, (dma_addr_t *)skb->head);
	FUNC2(adap, q);
	return NET_XMIT_SUCCESS;
}