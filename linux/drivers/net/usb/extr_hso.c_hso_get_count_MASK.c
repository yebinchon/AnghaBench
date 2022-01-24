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
struct uart_icount {int /*<<< orphan*/  buf_overrun; int /*<<< orphan*/  brk; int /*<<< orphan*/  parity; int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; int /*<<< orphan*/  dcd; int /*<<< orphan*/  rng; int /*<<< orphan*/  dsr; int /*<<< orphan*/  cts; } ;
struct tty_struct {struct hso_serial* driver_data; } ;
struct serial_icounter_struct {int /*<<< orphan*/  buf_overrun; int /*<<< orphan*/  brk; int /*<<< orphan*/  parity; int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; int /*<<< orphan*/  dcd; int /*<<< orphan*/  rng; int /*<<< orphan*/  dsr; int /*<<< orphan*/  cts; } ;
struct hso_tiocmget {int /*<<< orphan*/  icount; } ;
struct hso_serial {int /*<<< orphan*/  serial_lock; struct hso_tiocmget* tiocmget; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_icount*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct serial_icounter_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty,
		  struct serial_icounter_struct *icount)
{
	struct uart_icount cnow;
	struct hso_serial *serial = tty->driver_data;
	struct hso_tiocmget  *tiocmget = serial->tiocmget;

	FUNC1(icount, 0, sizeof(struct serial_icounter_struct));

	if (!tiocmget)
		 return -ENOENT;
	FUNC2(&serial->serial_lock);
	FUNC0(&cnow, &tiocmget->icount, sizeof(struct uart_icount));
	FUNC3(&serial->serial_lock);

	icount->cts         = cnow.cts;
	icount->dsr         = cnow.dsr;
	icount->rng         = cnow.rng;
	icount->dcd         = cnow.dcd;
	icount->rx          = cnow.rx;
	icount->tx          = cnow.tx;
	icount->frame       = cnow.frame;
	icount->overrun     = cnow.overrun;
	icount->parity      = cnow.parity;
	icount->brk         = cnow.brk;
	icount->buf_overrun = cnow.buf_overrun;

	return 0;
}