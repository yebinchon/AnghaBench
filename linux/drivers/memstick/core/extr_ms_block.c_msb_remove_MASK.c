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
struct msb_data {int card_dead; int /*<<< orphan*/  disk; int /*<<< orphan*/ * queue; int /*<<< orphan*/  tag_set; int /*<<< orphan*/  q_lock; int /*<<< orphan*/  io_queue_stopped; } ;
struct memstick_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct msb_data* FUNC5 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct memstick_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct msb_data*) ; 
 int /*<<< orphan*/  msb_disk_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct memstick_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC14(struct memstick_dev *card)
{
	struct msb_data *msb = FUNC5(card);
	unsigned long flags;

	if (!msb->io_queue_stopped)
		FUNC9(card);

	FUNC3("Removing the disk device");

	/* Take care of unhandled + new requests from now on */
	FUNC12(&msb->q_lock, flags);
	msb->card_dead = true;
	FUNC13(&msb->q_lock, flags);
	FUNC2(msb->queue);

	/* Remove the disk */
	FUNC4(msb->disk);
	FUNC0(msb->queue);
	FUNC1(&msb->tag_set);
	msb->queue = NULL;

	FUNC10(&msb_disk_lock);
	FUNC7(msb);
	FUNC11(&msb_disk_lock);

	FUNC8(msb->disk);
	FUNC6(card, NULL);
}