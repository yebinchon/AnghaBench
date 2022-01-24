#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct msb_data {int io_queue_stopped; int need_flush_cache; int /*<<< orphan*/  io_work; int /*<<< orphan*/  io_queue; int /*<<< orphan*/  queue; int /*<<< orphan*/  q_lock; scalar_t__ card_dead; } ;
struct memstick_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct msb_data* FUNC2 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct msb_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct memstick_dev *card)
{
	struct msb_data *msb = FUNC2(card);
	unsigned long flags;

	FUNC1("Resuming IO from msblock");

	FUNC3(msb);

	FUNC5(&msb->q_lock, flags);
	if (!msb->io_queue_stopped || msb->card_dead) {
		FUNC6(&msb->q_lock, flags);
		return;
	}
	FUNC6(&msb->q_lock, flags);

	/* Kick cache flush anyway, its harmless */
	msb->need_flush_cache = true;
	msb->io_queue_stopped = false;

	FUNC0(msb->queue);

	FUNC4(msb->io_queue, &msb->io_work);

}