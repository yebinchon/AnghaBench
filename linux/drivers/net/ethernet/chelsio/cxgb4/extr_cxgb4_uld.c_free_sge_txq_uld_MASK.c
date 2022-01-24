#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sge_uld_txq_info {int ntxq; struct sge_uld_txq* uldtxq; } ;
struct TYPE_3__ {int /*<<< orphan*/  sdesc; int /*<<< orphan*/  in_use; int /*<<< orphan*/  cntxt_id; scalar_t__ desc; } ;
struct sge_uld_txq {TYPE_1__ q; int /*<<< orphan*/  sendq; int /*<<< orphan*/  qresume_tsk; } ;
struct adapter {int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct adapter *adap, struct sge_uld_txq_info *txq_info)
{
	int nq = txq_info->ntxq;
	int i;

	for (i = 0; i < nq; i++) {
		struct sge_uld_txq *txq = &txq_info->uldtxq[i];

		if (txq && txq->q.desc) {
			FUNC5(&txq->qresume_tsk);
			FUNC4(adap, adap->mbox, adap->pf, 0,
					txq->q.cntxt_id);
			FUNC1(adap, &txq->q, txq->q.in_use, false);
			FUNC3(txq->q.sdesc);
			FUNC0(&txq->sendq);
			FUNC2(adap, &txq->q);
		}
	}
}