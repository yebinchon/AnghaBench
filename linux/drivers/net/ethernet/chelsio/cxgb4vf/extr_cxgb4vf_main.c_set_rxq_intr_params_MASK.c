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
typedef  scalar_t__ u32 ;
struct sge_rspq {scalar_t__ pktcnt_idx; int intr_params; int /*<<< orphan*/  cntxt_id; scalar_t__ desc; } ;
struct adapter {int /*<<< orphan*/  sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_PARAMS_MNEM_DMAQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (unsigned int) ; 
 unsigned int SGE_TIMER_RSTRT_CNTR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC7 (struct adapter*,int,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC8(struct adapter *adapter, struct sge_rspq *rspq,
			       unsigned int us, unsigned int cnt)
{
	unsigned int timer_idx;

	/*
	 * If both the interrupt holdoff timer and count are specified as
	 * zero, default to a holdoff count of 1 ...
	 */
	if ((us | cnt) == 0)
		cnt = 1;

	/*
	 * If an interrupt holdoff count has been specified, then find the
	 * closest configured holdoff count and use that.  If the response
	 * queue has already been created, then update its queue context
	 * parameters ...
	 */
	if (cnt) {
		int err;
		u32 v, pktcnt_idx;

		pktcnt_idx = FUNC5(&adapter->sge, cnt);
		if (rspq->desc && rspq->pktcnt_idx != pktcnt_idx) {
			v = FUNC0(FW_PARAMS_MNEM_DMAQ) |
			    FUNC1(
					FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH) |
			    FUNC2(rspq->cntxt_id);
			err = FUNC7(adapter, 1, &v, &pktcnt_idx);
			if (err)
				return err;
		}
		rspq->pktcnt_idx = pktcnt_idx;
	}

	/*
	 * Compute the closest holdoff timer index from the supplied holdoff
	 * timer value.
	 */
	timer_idx = (us == 0
		     ? SGE_TIMER_RSTRT_CNTR
		     : FUNC6(&adapter->sge, us));

	/*
	 * Update the response queue's interrupt coalescing parameters and
	 * return success.
	 */
	rspq->intr_params = (FUNC4(timer_idx) |
			     FUNC3(cnt > 0));
	return 0;
}