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
struct ionic_lif {unsigned int nxqs; TYPE_2__* rxqcqs; TYPE_1__* txqcqs; TYPE_3__* netdev; } ;
struct TYPE_6__ {int features; } ;
struct TYPE_5__ {int /*<<< orphan*/  qcq; } ;
struct TYPE_4__ {int /*<<< orphan*/  qcq; } ;

/* Variables and functions */
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC0 (struct ionic_lif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ionic_lif*) ; 
 int FUNC2 (struct ionic_lif*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ionic_lif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(struct ionic_lif *lif)
{
	unsigned int i;
	int err;

	for (i = 0; i < lif->nxqs; i++) {
		err = FUNC3(lif, lif->txqcqs[i].qcq);
		if (err)
			goto err_out;

		err = FUNC2(lif, lif->rxqcqs[i].qcq);
		if (err) {
			FUNC0(lif, lif->txqcqs[i].qcq);
			goto err_out;
		}
	}

	if (lif->netdev->features & NETIF_F_RXHASH)
		FUNC1(lif);

	FUNC4(lif->netdev);

	return 0;

err_out:
	while (i--) {
		FUNC0(lif, lif->txqcqs[i].qcq);
		FUNC0(lif, lif->rxqcqs[i].qcq);
	}

	return err;
}