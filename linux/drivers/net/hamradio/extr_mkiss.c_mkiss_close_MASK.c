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
struct tty_struct {struct mkiss* disc_data; } ;
struct mkiss {int /*<<< orphan*/  dev; int /*<<< orphan*/ * tty; int /*<<< orphan*/  xbuff; int /*<<< orphan*/  rbuff; int /*<<< orphan*/  dead; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  disc_data_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty)
{
	struct mkiss *ax;

	FUNC5(&disc_data_lock);
	ax = tty->disc_data;
	tty->disc_data = NULL;
	FUNC6(&disc_data_lock);

	if (!ax)
		return;

	/*
	 * We have now ensured that nobody can start using ap from now on, but
	 * we have to wait for all existing users to finish.
	 */
	if (!FUNC2(&ax->refcnt))
		FUNC4(&ax->dead);
	/*
	 * Halt the transmit queue so that a new transmit cannot scribble
	 * on our buffers
	 */
	FUNC1(ax->dev);

	/* Free all AX25 frame buffers. */
	FUNC0(ax->rbuff);
	FUNC0(ax->xbuff);

	ax->tty = NULL;

	FUNC3(ax->dev);
}