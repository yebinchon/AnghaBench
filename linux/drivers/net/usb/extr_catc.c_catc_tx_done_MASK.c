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
struct urb {int status; int /*<<< orphan*/  actual_length; TYPE_2__* dev; struct catc* context; } ;
struct catc {int /*<<< orphan*/  tx_lock; TYPE_3__* netdev; int /*<<< orphan*/  flags; scalar_t__ tx_ptr; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int /*<<< orphan*/  TX_RUNNING ; 
 int FUNC0 (struct catc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct urb *urb)
{
	struct catc *catc = urb->context;
	unsigned long flags;
	int r, status = urb->status;

	if (status == -ECONNRESET) {
		FUNC2(&urb->dev->dev, "Tx Reset.\n");
		urb->status = 0;
		FUNC3(catc->netdev);
		catc->netdev->stats.tx_errors++;
		FUNC1(TX_RUNNING, &catc->flags);
		FUNC4(catc->netdev);
		return;
	}

	if (status) {
		FUNC2(&urb->dev->dev, "tx_done, status %d, length %d\n",
			status, urb->actual_length);
		return;
	}

	FUNC5(&catc->tx_lock, flags);

	if (catc->tx_ptr) {
		r = FUNC0(catc);
		if (FUNC7(r < 0))
			FUNC1(TX_RUNNING, &catc->flags);
	} else {
		FUNC1(TX_RUNNING, &catc->flags);
	}

	FUNC4(catc->netdev);

	FUNC6(&catc->tx_lock, flags);
}