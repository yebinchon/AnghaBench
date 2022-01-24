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
typedef  scalar_t__ u8 ;
struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx; } ;
struct kfifo {int dummy; } ;
struct sdio_uart_port {TYPE_1__ icount; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  port; scalar_t__ x_char; struct kfifo xmit_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_TX ; 
 int WAKEUP_CHARS ; 
 int FUNC0 (struct kfifo*) ; 
 int FUNC1 (struct kfifo*,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 struct tty_struct* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC7(struct sdio_uart_port *port)
{
	struct kfifo *xmit = &port->xmit_fifo;
	int count;
	struct tty_struct *tty;
	u8 iobuf[16];
	int len;

	if (port->x_char) {
		FUNC2(port, UART_TX, port->x_char);
		port->icount.tx++;
		port->x_char = 0;
		return;
	}

	tty = FUNC5(&port->port);

	if (tty == NULL || !FUNC0(xmit) ||
				tty->stopped || tty->hw_stopped) {
		FUNC3(port);
		FUNC4(tty);
		return;
	}

	len = FUNC1(xmit, iobuf, 16, &port->write_lock);
	for (count = 0; count < len; count++) {
		FUNC2(port, UART_TX, iobuf[count]);
		port->icount.tx++;
	}

	len = FUNC0(xmit);
	if (len < WAKEUP_CHARS) {
		FUNC6(tty);
		if (len == 0)
			FUNC3(port);
	}
	FUNC4(tty);
}