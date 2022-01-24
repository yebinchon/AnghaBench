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
struct tty_struct {int /*<<< orphan*/ * disc_data; } ;
struct slcan {scalar_t__ magic; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  lock; struct tty_struct* tty; } ;

/* Variables and functions */
 scalar_t__ SLCAN_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct slcan *sl = (struct slcan *) tty->disc_data;

	/* First make sure we're connected. */
	if (!sl || sl->magic != SLCAN_MAGIC || sl->tty != tty)
		return;

	FUNC1(&sl->lock);
	tty->disc_data = NULL;
	sl->tty = NULL;
	FUNC2(&sl->lock);

	FUNC0(&sl->tx_work);

	/* Flush network side */
	FUNC3(sl->dev);
	/* This will complete via sl_free_netdev */
}