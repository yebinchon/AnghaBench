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
struct TYPE_2__ {unsigned int c_cflag; } ;
struct tty_struct {int hw_stopped; TYPE_1__ termios; struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int dummy; } ;
struct ktermios {unsigned int c_cflag; } ;

/* Variables and functions */
 unsigned int CBAUD ; 
 unsigned int CRTSCTS ; 
 int TIOCM_CTS ; 
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct sdio_uart_port*,TYPE_1__*,struct ktermios*) ; 
 scalar_t__ FUNC1 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*,unsigned int) ; 
 int FUNC3 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC9(struct tty_struct *tty,
						struct ktermios *old_termios)
{
	struct sdio_uart_port *port = tty->driver_data;
	unsigned int cflag = tty->termios.c_cflag;

	if (FUNC1(port) != 0)
		return;

	FUNC0(port, &tty->termios, old_termios);

	/* Handle transition to B0 status */
	if ((old_termios->c_cflag & CBAUD) && !(cflag & CBAUD))
		FUNC2(port, TIOCM_RTS | TIOCM_DTR);

	/* Handle transition away from B0 status */
	if (!(old_termios->c_cflag & CBAUD) && (cflag & CBAUD)) {
		unsigned int mask = TIOCM_DTR;
		if (!(cflag & CRTSCTS) || !FUNC8(tty))
			mask |= TIOCM_RTS;
		FUNC5(port, mask);
	}

	/* Handle turning off CRTSCTS */
	if ((old_termios->c_cflag & CRTSCTS) && !(cflag & CRTSCTS)) {
		tty->hw_stopped = 0;
		FUNC6(port);
	}

	/* Handle turning on CRTSCTS */
	if (!(old_termios->c_cflag & CRTSCTS) && (cflag & CRTSCTS)) {
		if (!(FUNC3(port) & TIOCM_CTS)) {
			tty->hw_stopped = 1;
			FUNC7(port);
		}
	}

	FUNC4(port);
}