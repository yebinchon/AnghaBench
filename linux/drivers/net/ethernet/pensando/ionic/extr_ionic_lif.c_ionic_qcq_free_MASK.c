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
struct TYPE_7__ {struct ionic_qcq* info; } ;
struct TYPE_6__ {struct ionic_qcq* info; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;
struct ionic_qcq {int flags; TYPE_3__ q; TYPE_2__ cq; TYPE_1__ intr; int /*<<< orphan*/  base_pa; int /*<<< orphan*/ * base; int /*<<< orphan*/  total_size; } ;
struct ionic_lif {TYPE_4__* ionic; } ;
struct device {int dummy; } ;
struct TYPE_8__ {struct device* dev; } ;

/* Variables and functions */
 int IONIC_QCQ_F_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct ionic_qcq*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ionic_lif*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ionic_lif *lif, struct ionic_qcq *qcq)
{
	struct device *dev = lif->ionic->dev;

	if (!qcq)
		return;

	FUNC1(dev, qcq->total_size, qcq->base, qcq->base_pa);
	qcq->base = NULL;
	qcq->base_pa = 0;

	if (qcq->flags & IONIC_QCQ_F_INTR)
		FUNC2(lif, qcq->intr.index);

	FUNC0(dev, qcq->cq.info);
	qcq->cq.info = NULL;
	FUNC0(dev, qcq->q.info);
	qcq->q.info = NULL;
	FUNC0(dev, qcq);
}