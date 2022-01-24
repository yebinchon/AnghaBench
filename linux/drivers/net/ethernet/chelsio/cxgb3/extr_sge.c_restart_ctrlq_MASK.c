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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct sge_txq {size_t in_use; size_t size; size_t pidx; int gen; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  stops; int /*<<< orphan*/  sendq; int /*<<< orphan*/ * desc; } ;
struct sge_qset {int /*<<< orphan*/  adap; int /*<<< orphan*/  txq_stopped; struct sge_txq* txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_KDOORBELL ; 
 int F_SELEGRCNTX ; 
 size_t TXQ_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC13(unsigned long data)
{
	struct sk_buff *skb;
	struct sge_qset *qs = (struct sge_qset *)data;
	struct sge_txq *q = &qs->txq[TXQ_CTRL];

	FUNC7(&q->lock);
      again:FUNC2(q);

	while (q->in_use < q->size &&
	       (skb = FUNC1(&q->sendq)) != NULL) {

		FUNC12(&q->desc[q->pidx], skb, skb->len, q->gen);

		if (++q->pidx >= q->size) {
			q->pidx = 0;
			q->gen ^= 1;
		}
		q->in_use++;
	}

	if (!FUNC5(&q->sendq)) {
		FUNC3(TXQ_CTRL, &qs->txq_stopped);
		FUNC6();

		if (FUNC4(q) &&
		    FUNC10(TXQ_CTRL, &qs->txq_stopped))
			goto again;
		q->stops++;
	}

	FUNC8(&q->lock);
	FUNC11();
	FUNC9(qs->adap, A_SG_KDOORBELL,
		     F_SELEGRCNTX | FUNC0(q->cntxt_id));
}