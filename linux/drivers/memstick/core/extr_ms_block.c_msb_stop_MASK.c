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
struct msb_data {int io_queue_stopped; int /*<<< orphan*/  q_lock; int /*<<< orphan*/ * req; int /*<<< orphan*/  io_queue; int /*<<< orphan*/  cache_flush_timer; int /*<<< orphan*/  queue; } ;
struct memstick_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct msb_data* FUNC5 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct memstick_dev *card)
{
	struct msb_data *msb = FUNC5(card);
	unsigned long flags;

	FUNC2("Stopping all msblock IO");

	FUNC1(msb->queue);
	FUNC6(&msb->q_lock, flags);
	msb->io_queue_stopped = true;
	FUNC7(&msb->q_lock, flags);

	FUNC3(&msb->cache_flush_timer);
	FUNC4(msb->io_queue);

	FUNC6(&msb->q_lock, flags);
	if (msb->req) {
		FUNC0(msb->req, false);
		msb->req = NULL;
	}
	FUNC7(&msb->q_lock, flags);
}