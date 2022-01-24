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
struct bna_rxf {int rxmode_active; TYPE_1__* rx; int /*<<< orphan*/  rxmode_pending_bitmask; int /*<<< orphan*/  rxmode_pending; } ;
struct bna {int /*<<< orphan*/  promisc_rid; } ;
struct TYPE_2__ {int /*<<< orphan*/  rid; struct bna* bna; } ;

/* Variables and functions */
 int BNA_RXMODE_PROMISC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct bna_rxf *rxf)
{
	struct bna *bna = rxf->rx->bna;
	int ret = 0;

	if (FUNC1(rxf->rxmode_pending,
				rxf->rxmode_pending_bitmask) ||
		(rxf->rxmode_active & BNA_RXMODE_PROMISC)) {
		/* Do nothing if pending enable or already enabled */
	} else if (FUNC0(rxf->rxmode_pending,
					rxf->rxmode_pending_bitmask)) {
		/* Turn off pending disable command */
		FUNC3(rxf->rxmode_pending,
			rxf->rxmode_pending_bitmask);
	} else {
		/* Schedule enable */
		FUNC2(rxf->rxmode_pending,
				rxf->rxmode_pending_bitmask);
		bna->promisc_rid = rxf->rx->rid;
		ret = 1;
	}

	return ret;
}