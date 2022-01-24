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
struct b43legacy_pio {TYPE_4__* queue3; TYPE_3__* queue2; TYPE_2__* queue1; TYPE_1__* queue0; } ;
struct b43legacy_wldev {struct b43legacy_pio pio; } ;
struct TYPE_8__ {int /*<<< orphan*/  txtask; int /*<<< orphan*/  txqueue; scalar_t__ tx_frozen; } ;
struct TYPE_7__ {int /*<<< orphan*/  txtask; int /*<<< orphan*/  txqueue; scalar_t__ tx_frozen; } ;
struct TYPE_6__ {int /*<<< orphan*/  txtask; int /*<<< orphan*/  txqueue; scalar_t__ tx_frozen; } ;
struct TYPE_5__ {int /*<<< orphan*/  txtask; int /*<<< orphan*/  txqueue; scalar_t__ tx_frozen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct b43legacy_wldev *dev)
{
	struct b43legacy_pio *pio;

	FUNC0(!FUNC1(dev));
	pio = &dev->pio;
	pio->queue0->tx_frozen = 0;
	pio->queue1->tx_frozen = 0;
	pio->queue2->tx_frozen = 0;
	pio->queue3->tx_frozen = 0;
	if (!FUNC2(&pio->queue0->txqueue))
		FUNC3(&pio->queue0->txtask);
	if (!FUNC2(&pio->queue1->txqueue))
		FUNC3(&pio->queue1->txtask);
	if (!FUNC2(&pio->queue2->txqueue))
		FUNC3(&pio->queue2->txtask);
	if (!FUNC2(&pio->queue3->txqueue))
		FUNC3(&pio->queue3->txtask);
}