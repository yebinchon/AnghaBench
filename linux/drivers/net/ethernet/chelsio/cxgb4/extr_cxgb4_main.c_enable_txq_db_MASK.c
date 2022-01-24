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
struct sge_txq {int /*<<< orphan*/  db_lock; scalar_t__ db_disabled; scalar_t__ db_pidx_inc; int /*<<< orphan*/  cntxt_id; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SGE_PF_KDOORBELL_A ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct adapter *adap, struct sge_txq *q)
{
	FUNC3(&q->db_lock);
	if (q->db_pidx_inc) {
		/* Make sure that all writes to the TX descriptors
		 * are committed before we tell HW about them.
		 */
		FUNC6();
		FUNC5(adap, FUNC0(SGE_PF_KDOORBELL_A),
			     FUNC2(q->cntxt_id) | FUNC1(q->db_pidx_inc));
		q->db_pidx_inc = 0;
	}
	q->db_disabled = 0;
	FUNC4(&q->db_lock);
}