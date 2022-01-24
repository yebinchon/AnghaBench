#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {TYPE_2__* ops; int /*<<< orphan*/  flags; } ;
struct sixpack {scalar_t__ xleft; int xhead; scalar_t__ tx_enable; TYPE_3__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_packets; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
struct TYPE_5__ {int (* write ) (struct tty_struct*,int,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 struct sixpack* FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct sixpack*) ; 
 int FUNC4 (struct tty_struct*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct sixpack *sp = FUNC2(tty);
	int actual;

	if (!sp)
		return;
	if (sp->xleft <= 0)  {
		/* Now serial buffer is almost free & we can start
		 * transmission of another packet */
		sp->dev->stats.tx_packets++;
		FUNC0(TTY_DO_WRITE_WAKEUP, &tty->flags);
		sp->tx_enable = 0;
		FUNC1(sp->dev);
		goto out;
	}

	if (sp->tx_enable) {
		actual = tty->ops->write(tty, sp->xhead, sp->xleft);
		sp->xleft -= actual;
		sp->xhead += actual;
	}

out:
	FUNC3(sp);
}