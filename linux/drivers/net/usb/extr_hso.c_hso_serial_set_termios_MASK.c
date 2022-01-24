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
struct ktermios {int /*<<< orphan*/  c_cflag; } ;
struct tty_struct {struct ktermios termios; struct hso_serial* driver_data; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct hso_serial {int /*<<< orphan*/  serial_lock; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, struct ktermios *old)
{
	struct hso_serial *serial = tty->driver_data;
	unsigned long flags;

	if (old)
		FUNC1(0x16, "Termios called with: cflags new[%d] - old[%d]\n",
			tty->termios.c_cflag, old->c_cflag);

	/* the actual setup */
	FUNC2(&serial->serial_lock, flags);
	if (serial->port.count)
		FUNC0(tty, old);
	else
		tty->termios = *old;
	FUNC3(&serial->serial_lock, flags);

	/* done */
}