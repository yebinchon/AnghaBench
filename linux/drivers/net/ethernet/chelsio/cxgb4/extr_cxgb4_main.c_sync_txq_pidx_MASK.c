#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sge_txq {scalar_t__ db_pidx; scalar_t__ size; int /*<<< orphan*/  db_lock; scalar_t__ db_pidx_inc; scalar_t__ db_disabled; scalar_t__ cntxt_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  SGE_PF_KDOORBELL_A ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct adapter*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct adapter *adap, struct sge_txq *q)
{
	u16 hw_pidx, hw_cidx;
	int ret;

	FUNC7(&q->db_lock);
	ret = FUNC6(adap, (u16)q->cntxt_id, &hw_pidx, &hw_cidx);
	if (ret)
		goto out;
	if (q->db_pidx != hw_pidx) {
		u16 delta;
		u32 val;

		if (q->db_pidx >= hw_pidx)
			delta = q->db_pidx - hw_pidx;
		else
			delta = q->size - hw_pidx + q->db_pidx;

		if (FUNC5(adap->params.chip))
			val = FUNC3(delta);
		else
			val = FUNC2(delta);
		FUNC10();
		FUNC9(adap, FUNC1(SGE_PF_KDOORBELL_A),
			     FUNC4(q->cntxt_id) | val);
	}
out:
	q->db_disabled = 0;
	q->db_pidx_inc = 0;
	FUNC8(&q->db_lock);
	if (ret)
		FUNC0(adap, "DB drop recovery failed.\n");
}