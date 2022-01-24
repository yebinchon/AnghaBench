#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int cntxt_id; } ;
struct sge_eth_txq {TYPE_2__ q; } ;
struct sched_table {struct sched_class* tab; } ;
struct TYPE_6__ {size_t class; } ;
struct sched_queue_entry {unsigned int cntxt_id; int /*<<< orphan*/  list; TYPE_3__ param; } ;
struct sched_class {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  queue_list; } ;
struct port_info {size_t nqsets; size_t first_qset; struct sched_table* sched_tbl; struct adapter* adapter; } ;
struct ch_sched_queue {size_t queue; } ;
struct TYPE_4__ {struct sge_eth_txq* ethtxq; } ;
struct adapter {TYPE_1__ sge; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCHED_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sched_queue_entry*) ; 
 struct sched_queue_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct ch_sched_queue*,int) ; 
 int FUNC5 (struct port_info*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct port_info*,struct ch_sched_queue*) ; 

__attribute__((used)) static int FUNC7(struct port_info *pi, struct ch_sched_queue *p)
{
	struct adapter *adap = pi->adapter;
	struct sched_table *s = pi->sched_tbl;
	struct sched_class *e;
	struct sched_queue_entry *qe = NULL;
	struct sge_eth_txq *txq;
	unsigned int qid;
	int err = 0;

	if (p->queue < 0 || p->queue >= pi->nqsets)
		return -ERANGE;

	qe = FUNC2(sizeof(struct sched_queue_entry), GFP_KERNEL);
	if (!qe)
		return -ENOMEM;

	txq = &adap->sge.ethtxq[pi->first_qset + p->queue];
	qid = txq->q.cntxt_id;

	/* Unbind queue from any existing class */
	err = FUNC6(pi, p);
	if (err)
		goto out_err;

	/* Bind queue to specified class */
	qe->cntxt_id = qid;
	FUNC4(&qe->param, p, sizeof(qe->param));

	e = &s->tab[qe->param.class];
	err = FUNC5(pi, (void *)qe, SCHED_QUEUE, true);
	if (err)
		goto out_err;

	FUNC3(&qe->list, &e->queue_list);
	FUNC0(&e->refcnt);
	return err;

out_err:
	FUNC1(qe);
	return err;
}