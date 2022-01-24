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
struct syncppp {int /*<<< orphan*/  tsk; int /*<<< orphan*/  xmit_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  XMIT_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct syncppp* FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct syncppp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct tty_struct *tty)
{
	struct syncppp *ap = FUNC2(tty);

	FUNC0(TTY_DO_WRITE_WAKEUP, &tty->flags);
	if (!ap)
		return;
	FUNC1(XMIT_WAKEUP, &ap->xmit_flags);
	FUNC4(&ap->tsk);
	FUNC3(ap);
}