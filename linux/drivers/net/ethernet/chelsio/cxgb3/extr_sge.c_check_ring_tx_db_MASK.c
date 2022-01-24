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
struct sge_txq {int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  flags; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_KDOORBELL ; 
 int F_SELEGRCNTX ; 
 int /*<<< orphan*/  TXQ_LAST_PKT_DB ; 
 int /*<<< orphan*/  TXQ_RUNNING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static inline void FUNC6(struct adapter *adap, struct sge_txq *q)
{
#if USE_GTS
	clear_bit(TXQ_LAST_PKT_DB, &q->flags);
	if (test_and_set_bit(TXQ_RUNNING, &q->flags) == 0) {
		set_bit(TXQ_LAST_PKT_DB, &q->flags);
		t3_write_reg(adap, A_SG_KDOORBELL,
			     F_SELEGRCNTX | V_EGRCNTX(q->cntxt_id));
	}
#else
	FUNC5();			/* write descriptors before telling HW */
	FUNC3(adap, A_SG_KDOORBELL,
		     F_SELEGRCNTX | FUNC0(q->cntxt_id));
#endif
}