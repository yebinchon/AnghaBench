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
struct ionic_lif {unsigned int nxqs; TYPE_2__* txqcqs; TYPE_2__* rxqcqs; int /*<<< orphan*/ * adminqcq; int /*<<< orphan*/ * notifyqcq; TYPE_1__* ionic; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* stats; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ionic_lif*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ionic_lif *lif)
{
	struct device *dev = lif->ionic->dev;
	unsigned int i;

	if (lif->notifyqcq) {
		FUNC1(lif, lif->notifyqcq);
		lif->notifyqcq = NULL;
	}

	if (lif->adminqcq) {
		FUNC1(lif, lif->adminqcq);
		lif->adminqcq = NULL;
	}

	for (i = 0; i < lif->nxqs; i++)
		if (lif->rxqcqs[i].stats)
			FUNC0(dev, lif->rxqcqs[i].stats);

	FUNC0(dev, lif->rxqcqs);
	lif->rxqcqs = NULL;

	for (i = 0; i < lif->nxqs; i++)
		if (lif->txqcqs[i].stats)
			FUNC0(dev, lif->txqcqs[i].stats);

	FUNC0(dev, lif->txqcqs);
	lif->txqcqs = NULL;
}