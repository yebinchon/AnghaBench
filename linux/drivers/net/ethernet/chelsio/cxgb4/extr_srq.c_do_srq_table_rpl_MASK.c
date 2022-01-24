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
struct srq_entry {int valid; unsigned int idx; void* max_msn; void* cur_msn; int /*<<< orphan*/  qbase; int /*<<< orphan*/  qlen; int /*<<< orphan*/  pdid; } ;
struct srq_data {int /*<<< orphan*/  comp; struct srq_entry* entryp; } ;
struct cpl_srq_table_rpl {scalar_t__ status; int /*<<< orphan*/  max_msn; int /*<<< orphan*/  cur_msn; int /*<<< orphan*/  qlen_qbase; int /*<<< orphan*/  rsvd_pdid; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; struct srq_data* srq; } ;

/* Variables and functions */
 scalar_t__ CPL_CONTAINS_READ_RPL ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_srq_table_rpl const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(struct adapter *adap,
		      const struct cpl_srq_table_rpl *rpl)
{
	unsigned int idx = FUNC4(FUNC0(rpl));
	struct srq_data *s = adap->srq;
	struct srq_entry *e;

	if (FUNC10(rpl->status != CPL_CONTAINS_READ_RPL)) {
		FUNC9(adap->pdev_dev,
			"Unexpected SRQ_TABLE_RPL status %u for entry %u\n",
				rpl->status, idx);
		goto out;
	}

	/* Store the read entry */
	e = s->entryp;
	e->valid = 1;
	e->idx = idx;
	e->pdid = FUNC1(FUNC7(rpl->rsvd_pdid));
	e->qlen = FUNC3(FUNC6(rpl->qlen_qbase));
	e->qbase = FUNC2(FUNC6(rpl->qlen_qbase));
	e->cur_msn = FUNC5(rpl->cur_msn);
	e->max_msn = FUNC5(rpl->max_msn);
out:
	FUNC8(&s->comp);
}