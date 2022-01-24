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
struct TYPE_4__ {int /*<<< orphan*/  index; int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {int /*<<< orphan*/  lif; } ;
struct ionic_qcq {int flags; TYPE_2__ intr; TYPE_1__ cq; } ;

/* Variables and functions */
 int IONIC_QCQ_F_INTR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ionic_qcq *src_qcq,
				      struct ionic_qcq *n_qcq)
{
	if (FUNC0(n_qcq->flags & IONIC_QCQ_F_INTR)) {
		FUNC1(n_qcq->cq.lif, n_qcq->intr.index);
		n_qcq->flags &= ~IONIC_QCQ_F_INTR;
	}

	n_qcq->intr.vector = src_qcq->intr.vector;
	n_qcq->intr.index = src_qcq->intr.index;
}