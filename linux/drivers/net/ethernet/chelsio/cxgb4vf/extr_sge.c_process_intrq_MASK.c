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
typedef  int u32 ;
struct sge_rspq {int iqe_len; unsigned int abs_id; scalar_t__ bar2_addr; int /*<<< orphan*/  bar2_qid; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  intr_params; int /*<<< orphan*/  napi; scalar_t__ cur_desc; } ;
struct sge {int /*<<< orphan*/  intrq_lock; struct sge_rspq** ingr_map; struct sge_rspq intrq; } ;
struct rsp_ctrl {int /*<<< orphan*/  pldbuflen_qid; int /*<<< orphan*/  type_gen; } ;
struct adapter {struct sge sge; int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct sge*,unsigned int) ; 
 unsigned int MAX_INGQ ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ RSPD_TYPE_INTR_X ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SGE_UDB_GTS ; 
 scalar_t__ SGE_VF_GTS ; 
 scalar_t__ T4VF_SGE_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct rsp_ctrl const*,struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,scalar_t__,int) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC18(struct adapter *adapter)
{
	struct sge *s = &adapter->sge;
	struct sge_rspq *intrq = &s->intrq;
	unsigned int work_done;
	u32 val;

	FUNC12(&adapter->sge.intrq_lock);
	for (work_done = 0; ; work_done++) {
		const struct rsp_ctrl *rc;
		unsigned int qid, iq_idx;
		struct sge_rspq *rspq;

		/*
		 * Grab the next response from the interrupt queue and bail
		 * out if it's not a new response.
		 */
		rc = (void *)intrq->cur_desc + (intrq->iqe_len - sizeof(*rc));
		if (!FUNC9(rc, intrq))
			break;

		/*
		 * If the response isn't a forwarded interrupt message issue a
		 * error and go on to the next response message.  This should
		 * never happen ...
		 */
		FUNC8();
		if (FUNC15(FUNC4(rc->type_gen) != RSPD_TYPE_INTR_X)) {
			FUNC7(adapter->pdev_dev,
				"Unexpected INTRQ response type %d\n",
				FUNC4(rc->type_gen));
			continue;
		}

		/*
		 * Extract the Queue ID from the interrupt message and perform
		 * sanity checking to make sure it really refers to one of our
		 * Ingress Queues which is active and matches the queue's ID.
		 * None of these error conditions should ever happen so we may
		 * want to either make them fatal and/or conditionalized under
		 * DEBUG.
		 */
		qid = FUNC3(FUNC6(rc->pldbuflen_qid));
		iq_idx = FUNC2(s, qid);
		if (FUNC15(iq_idx >= MAX_INGQ)) {
			FUNC7(adapter->pdev_dev,
				"Ingress QID %d out of range\n", qid);
			continue;
		}
		rspq = s->ingr_map[iq_idx];
		if (FUNC15(rspq == NULL)) {
			FUNC7(adapter->pdev_dev,
				"Ingress QID %d RSPQ=NULL\n", qid);
			continue;
		}
		if (FUNC15(rspq->abs_id != qid)) {
			FUNC7(adapter->pdev_dev,
				"Ingress QID %d refers to RSPQ %d\n",
				qid, rspq->abs_id);
			continue;
		}

		/*
		 * Schedule NAPI processing on the indicated Response Queue
		 * and move on to the next entry in the Forwarded Interrupt
		 * Queue.
		 */
		FUNC10(&rspq->napi);
		FUNC11(intrq);
	}

	val = FUNC0(work_done) | FUNC5(intrq->intr_params);
	/* If we don't have access to the new User GTS (T5+), use the old
	 * doorbell mechanism; otherwise use the new BAR2 mechanism.
	 */
	if (FUNC15(!intrq->bar2_addr)) {
		FUNC14(adapter, T4VF_SGE_BASE_ADDR + SGE_VF_GTS,
			     val | FUNC1(intrq->cntxt_id));
	} else {
		FUNC17(val | FUNC1(intrq->bar2_qid),
		       intrq->bar2_addr + SGE_UDB_GTS);
		FUNC16();
	}

	FUNC13(&adapter->sge.intrq_lock);

	return work_done;
}