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
struct tty_struct {TYPE_1__* ops; int /*<<< orphan*/  flags; } ;
struct mkiss {scalar_t__ xleft; int xhead; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,int,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mkiss* FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mkiss*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tty_struct*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct mkiss *ax = FUNC1(tty);
	int actual;

	if (!ax)
		return;

	if (ax->xleft <= 0)  {
		/* Now serial buffer is almost free & we can start
		 * transmission of another packet
		 */
		FUNC0(TTY_DO_WRITE_WAKEUP, &tty->flags);

		FUNC3(ax->dev);
		goto out;
	}

	actual = tty->ops->write(tty, ax->xhead, ax->xleft);
	ax->xleft -= actual;
	ax->xhead += actual;

out:
	FUNC2(ax);
}