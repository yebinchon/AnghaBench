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
struct smt_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct smt_data {struct smt_entry* smtab; } ;
struct cpl_smt_write_rpl {scalar_t__ status; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; struct smt_data* smt; } ;

/* Variables and functions */
 scalar_t__ CPL_ERR_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_smt_write_rpl const*) ; 
 int /*<<< orphan*/  SMT_STATE_ERROR ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct adapter *adap, const struct cpl_smt_write_rpl *rpl)
{
	unsigned int smtidx = FUNC1(FUNC0(rpl));
	struct smt_data *s = adap->smt;

	if (FUNC5(rpl->status != CPL_ERR_NONE)) {
		struct smt_entry *e = &s->smtab[smtidx];

		FUNC2(adap->pdev_dev,
			"Unexpected SMT_WRITE_RPL status %u for entry %u\n",
			rpl->status, smtidx);
		FUNC3(&e->lock);
		e->state = SMT_STATE_ERROR;
		FUNC4(&e->lock);
		return;
	}
}