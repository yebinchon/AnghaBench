#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ionic_lif {int nxqs; TYPE_2__* txqcqs; TYPE_1__* rxqcqs; } ;
struct TYPE_7__ {int /*<<< orphan*/  q; } ;
struct TYPE_6__ {TYPE_3__* qcq; } ;
struct TYPE_5__ {TYPE_3__* qcq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ionic_lif *lif)
{
	int i, err;

	for (i = 0; i < lif->nxqs; i++) {
		err = FUNC1(lif->txqcqs[i].qcq);
		if (err)
			goto err_out;

		FUNC2(&lif->rxqcqs[i].qcq->q);
		err = FUNC1(lif->rxqcqs[i].qcq);
		if (err) {
			FUNC0(lif->txqcqs[i].qcq);
			goto err_out;
		}
	}

	return 0;

err_out:
	while (i--) {
		FUNC0(lif->rxqcqs[i].qcq);
		FUNC0(lif->txqcqs[i].qcq);
	}

	return err;
}