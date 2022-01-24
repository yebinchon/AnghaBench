#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct napi_struct {int dummy; } ;
struct ionic_cq {TYPE_4__* bound_intr; TYPE_3__* lif; } ;
struct ionic_qcq {struct ionic_cq cq; } ;
typedef  int /*<<< orphan*/  ionic_cq_done_cb ;
typedef  int /*<<< orphan*/  ionic_cq_cb ;
struct TYPE_8__ {int /*<<< orphan*/  index; } ;
struct TYPE_7__ {TYPE_2__* ionic; } ;
struct TYPE_5__ {int /*<<< orphan*/  intr_ctrl; } ;
struct TYPE_6__ {TYPE_1__ idev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ionic_qcq*,int) ; 
 int IONIC_INTR_CRED_RESET_COALESCE ; 
 int IONIC_INTR_CRED_UNMASK ; 
 int FUNC2 (struct ionic_cq*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (struct napi_struct*,int) ; 
 struct ionic_qcq* FUNC5 (struct napi_struct*) ; 

int FUNC6(struct napi_struct *napi, int budget, ionic_cq_cb cb,
	       ionic_cq_done_cb done_cb, void *done_arg)
{
	struct ionic_qcq *qcq = FUNC5(napi);
	struct ionic_cq *cq = &qcq->cq;
	u32 work_done, flags = 0;

	work_done = FUNC2(cq, budget, cb, done_cb, done_arg);

	if (work_done < budget && FUNC4(napi, work_done)) {
		flags |= IONIC_INTR_CRED_UNMASK;
		FUNC0(cq->bound_intr);
	}

	if (work_done || flags) {
		flags |= IONIC_INTR_CRED_RESET_COALESCE;
		FUNC3(cq->lif->ionic->idev.intr_ctrl,
				   cq->bound_intr->index,
				   work_done, flags);
	}

	FUNC1(qcq, work_done);

	return work_done;
}