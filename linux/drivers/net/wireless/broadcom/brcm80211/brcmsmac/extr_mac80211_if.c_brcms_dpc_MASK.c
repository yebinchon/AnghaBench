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
struct brcms_info {int /*<<< orphan*/  tx_flush_wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  tasklet; scalar_t__ resched; TYPE_1__* pub; int /*<<< orphan*/  wlc; int /*<<< orphan*/  isr_lock; } ;
struct TYPE_2__ {scalar_t__ up; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(unsigned long data)
{
	struct brcms_info *wl;

	wl = (struct brcms_info *) data;

	FUNC3(&wl->lock);

	/* call the common second level interrupt handler */
	if (wl->pub->up) {
		if (wl->resched) {
			unsigned long flags;

			FUNC4(&wl->isr_lock, flags);
			FUNC1(wl->wlc);
			FUNC6(&wl->isr_lock, flags);
		}

		wl->resched = FUNC0(wl->wlc, true);
	}

	/* brcms_c_dpc() may bring the driver down */
	if (!wl->pub->up)
		goto done;

	/* re-schedule dpc */
	if (wl->resched)
		FUNC7(&wl->tasklet);
	else
		/* re-enable interrupts */
		FUNC2(wl);

 done:
	FUNC5(&wl->lock);
	FUNC8(&wl->tx_flush_wq);
}