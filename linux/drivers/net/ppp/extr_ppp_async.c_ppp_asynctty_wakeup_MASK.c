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
struct tty_struct {int /*<<< orphan*/  flags; } ;
struct asyncppp {int /*<<< orphan*/  tsk; int /*<<< orphan*/  xmit_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  XMIT_WAKEUP ; 
 struct asyncppp* FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct asyncppp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct tty_struct *tty)
{
	struct asyncppp *ap = FUNC0(tty);

	FUNC2(TTY_DO_WRITE_WAKEUP, &tty->flags);
	if (!ap)
		return;
	FUNC3(XMIT_WAKEUP, &ap->xmit_flags);
	FUNC4(&ap->tsk);
	FUNC1(ap);
}