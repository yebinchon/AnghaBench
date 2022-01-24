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
struct tty_struct {struct asyncppp* disc_data; } ;
struct asyncppp {int /*<<< orphan*/  tpkt; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  rpkt; int /*<<< orphan*/  chan; int /*<<< orphan*/  tsk; int /*<<< orphan*/  dead; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  disc_data_lock ; 
 int /*<<< orphan*/  FUNC0 (struct asyncppp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct tty_struct *tty)
{
	struct asyncppp *ap;

	FUNC7(&disc_data_lock);
	ap = tty->disc_data;
	tty->disc_data = NULL;
	FUNC8(&disc_data_lock);
	if (!ap)
		return;

	/*
	 * We have now ensured that nobody can start using ap from now
	 * on, but we have to wait for all existing users to finish.
	 * Note that ppp_unregister_channel ensures that no calls to
	 * our channel ops (i.e. ppp_async_send/ioctl) are in progress
	 * by the time it returns.
	 */
	if (!FUNC3(&ap->refcnt))
		FUNC6(&ap->dead);
	FUNC5(&ap->tsk);

	FUNC2(&ap->chan);
	FUNC1(ap->rpkt);
	FUNC4(&ap->rqueue);
	FUNC1(ap->tpkt);
	FUNC0(ap);
}