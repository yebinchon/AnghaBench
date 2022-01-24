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
struct sge_txq {int size; int /*<<< orphan*/  restarts; int /*<<< orphan*/  in_use; } ;
struct sge_eth_txq {int /*<<< orphan*/  txq; struct sge_txq q; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct adapter*,struct sge_txq*,int,int) ; 
 int FUNC5 (struct sge_txq*) ; 

int FUNC6(struct adapter *adap, struct sge_eth_txq *eq,
				 int maxreclaim)
{
	struct sge_txq *q = &eq->q;
	unsigned int reclaimed;

	if (!q->in_use || !FUNC0(eq->txq))
		return 0;

	/* Reclaim pending completed TX Descriptors. */
	reclaimed = FUNC4(adap, &eq->q, maxreclaim, true);

	/* If the TX Queue is currently stopped and there's now more than half
	 * the queue available, restart it.  Otherwise bail out since the rest
	 * of what we want do here is with the possibility of shipping any
	 * currently buffered Coalesced TX Work Request.
	 */
	if (FUNC2(eq->txq) && FUNC5(q) > (q->size / 2)) {
		FUNC3(eq->txq);
		eq->q.restarts++;
	}

	FUNC1(eq->txq);
	return reclaimed;
}