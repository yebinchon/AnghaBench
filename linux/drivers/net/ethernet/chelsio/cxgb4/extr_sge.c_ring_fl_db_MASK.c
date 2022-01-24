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
struct sge_fl {int pend_cred; int /*<<< orphan*/ * bar2_addr; int /*<<< orphan*/  bar2_qid; int /*<<< orphan*/  cntxt_id; } ;
struct TYPE_4__ {int sge_fl_db; } ;
struct TYPE_3__ {int /*<<< orphan*/  chip; TYPE_2__ arch; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SGE_PF_KDOORBELL_A ; 
 int SGE_UDB_KDOORBELL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC9(struct adapter *adap, struct sge_fl *q)
{
	if (q->pend_cred >= 8) {
		u32 val = adap->params.arch.sge_fl_db;

		if (FUNC4(adap->params.chip))
			val |= FUNC2(q->pend_cred / 8);
		else
			val |= FUNC1(q->pend_cred / 8);

		/* Make sure all memory writes to the Free List queue are
		 * committed before we tell the hardware about them.
		 */
		FUNC7();

		/* If we don't have access to the new User Doorbell (T5+), use
		 * the old doorbell mechanism; otherwise use the new BAR2
		 * mechanism.
		 */
		if (FUNC6(q->bar2_addr == NULL)) {
			FUNC5(adap, FUNC0(SGE_PF_KDOORBELL_A),
				     val | FUNC3(q->cntxt_id));
		} else {
			FUNC8(val | FUNC3(q->bar2_qid),
			       q->bar2_addr + SGE_UDB_KDOORBELL);

			/* This Write memory Barrier will force the write to
			 * the User Doorbell area to be flushed.
			 */
			FUNC7();
		}
		q->pend_cred &= 7;
	}
}