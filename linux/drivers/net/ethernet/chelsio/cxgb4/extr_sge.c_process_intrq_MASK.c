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
struct sge_rspq {int iqe_len; int /*<<< orphan*/ * bar2_addr; int /*<<< orphan*/  bar2_qid; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  intr_params; scalar_t__ cur_desc; } ;
struct rsp_ctrl {int /*<<< orphan*/  pldbuflen_qid; int /*<<< orphan*/  type_gen; } ;
struct TYPE_4__ {int /*<<< orphan*/  intrq_lock; TYPE_1__** ingr_map; scalar_t__ ingr_start; struct sge_rspq intrq; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ RSPD_TYPE_INTR_X ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SGE_PF_GTS_A ; 
 int SGE_UDB_GTS ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct rsp_ctrl const*,struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC16(struct adapter *adap)
{
	unsigned int credits;
	const struct rsp_ctrl *rc;
	struct sge_rspq *q = &adap->sge.intrq;
	u32 val;

	FUNC10(&adap->sge.intrq_lock);
	for (credits = 0; ; credits++) {
		rc = (void *)q->cur_desc + (q->iqe_len - sizeof(*rc));
		if (!FUNC6(rc, q))
			break;

		FUNC5();
		if (FUNC3(rc->type_gen) == RSPD_TYPE_INTR_X) {
			unsigned int qid = FUNC8(rc->pldbuflen_qid);

			qid -= adap->sge.ingr_start;
			FUNC7(&adap->sge.ingr_map[qid]->napi);
		}

		FUNC9(q);
	}

	val =  FUNC0(credits) | FUNC4(q->intr_params);

	/* If we don't have access to the new User GTS (T5+), use the old
	 * doorbell mechanism; otherwise use the new BAR2 mechanism.
	 */
	if (FUNC13(q->bar2_addr == NULL)) {
		FUNC12(adap, FUNC2(SGE_PF_GTS_A),
			     val | FUNC1(q->cntxt_id));
	} else {
		FUNC15(val | FUNC1(q->bar2_qid),
		       q->bar2_addr + SGE_UDB_GTS);
		FUNC14();
	}
	FUNC11(&adap->sge.intrq_lock);
	return credits;
}