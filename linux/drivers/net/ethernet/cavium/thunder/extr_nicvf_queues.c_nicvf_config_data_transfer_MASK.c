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
struct queue_set {int sq_cnt; int cq_cnt; int rbdr_cnt; int rq_cnt; int /*<<< orphan*/  sq_len; int /*<<< orphan*/  cq_len; } ;
struct nicvf {scalar_t__ sqs_mode; TYPE_1__* pnicvf; struct queue_set* qs; } ;
struct TYPE_2__ {struct queue_set* qs; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,struct queue_set*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,struct queue_set*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*,struct queue_set*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC6 (struct nicvf*,struct queue_set*,int,int) ; 

int FUNC7(struct nicvf *nic, bool enable)
{
	bool disable = false;
	struct queue_set *qs = nic->qs;
	struct queue_set *pqs = nic->pnicvf->qs;
	int qidx;

	if (!qs)
		return 0;

	/* Take primary VF's queue lengths.
	 * This is needed to take queue lengths set from ethtool
	 * into consideration.
	 */
	if (nic->sqs_mode && pqs) {
		qs->cq_len = pqs->cq_len;
		qs->sq_len = pqs->sq_len;
	}

	if (enable) {
		if (FUNC0(nic))
			return -ENOMEM;

		for (qidx = 0; qidx < qs->sq_cnt; qidx++)
			FUNC6(nic, qs, qidx, enable);
		for (qidx = 0; qidx < qs->cq_cnt; qidx++)
			FUNC1(nic, qs, qidx, enable);
		for (qidx = 0; qidx < qs->rbdr_cnt; qidx++)
			FUNC3(nic, qs, qidx, enable);
		for (qidx = 0; qidx < qs->rq_cnt; qidx++)
			FUNC4(nic, qs, qidx, enable);
	} else {
		for (qidx = 0; qidx < qs->rq_cnt; qidx++)
			FUNC4(nic, qs, qidx, disable);
		for (qidx = 0; qidx < qs->rbdr_cnt; qidx++)
			FUNC3(nic, qs, qidx, disable);
		for (qidx = 0; qidx < qs->sq_cnt; qidx++)
			FUNC6(nic, qs, qidx, disable);
		for (qidx = 0; qidx < qs->cq_cnt; qidx++)
			FUNC1(nic, qs, qidx, disable);

		FUNC2(nic);
	}

	/* Reset RXQ's stats.
	 * SQ's stats will get reset automatically once SQ is reset.
	 */
	FUNC5(nic);

	return 0;
}