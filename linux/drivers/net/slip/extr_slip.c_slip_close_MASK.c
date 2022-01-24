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
struct tty_struct {struct slip* disc_data; } ;
struct slip {scalar_t__ magic; int /*<<< orphan*/  dev; int /*<<< orphan*/  outfill_timer; int /*<<< orphan*/  keepalive_timer; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  lock; struct tty_struct* tty; } ;

/* Variables and functions */
 scalar_t__ SLIP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct slip *sl = tty->disc_data;

	/* First make sure we're connected. */
	if (!sl || sl->magic != SLIP_MAGIC || sl->tty != tty)
		return;

	FUNC2(&sl->lock);
	tty->disc_data = NULL;
	sl->tty = NULL;
	FUNC3(&sl->lock);

	FUNC1(&sl->tx_work);

	/* VSV = very important to remove timers */
#ifdef CONFIG_SLIP_SMART
	del_timer_sync(&sl->keepalive_timer);
	del_timer_sync(&sl->outfill_timer);
#endif
	/* Flush network side */
	FUNC4(sl->dev);
	/* This will complete via sl_free_netdev */
}