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
struct TYPE_2__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct sdio_uart_port {unsigned int read_status_mask; unsigned int ignore_status_mask; int /*<<< orphan*/  port; TYPE_1__ icount; } ;

/* Variables and functions */
 unsigned int TTY_BREAK ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_OVERRUN ; 
 unsigned int TTY_PARITY ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned int UART_LSR_BI ; 
 unsigned int UART_LSR_DR ; 
 unsigned int UART_LSR_FE ; 
 unsigned int UART_LSR_OE ; 
 unsigned int UART_LSR_PE ; 
 int /*<<< orphan*/  UART_RX ; 
 unsigned int FUNC0 (struct sdio_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(struct sdio_uart_port *port,
				    unsigned int *status)
{
	unsigned int ch, flag;
	int max_count = 256;

	do {
		ch = FUNC0(port, UART_RX);
		flag = TTY_NORMAL;
		port->icount.rx++;

		if (FUNC3(*status & (UART_LSR_BI | UART_LSR_PE |
					UART_LSR_FE | UART_LSR_OE))) {
			/*
			 * For statistics only
			 */
			if (*status & UART_LSR_BI) {
				*status &= ~(UART_LSR_FE | UART_LSR_PE);
				port->icount.brk++;
			} else if (*status & UART_LSR_PE)
				port->icount.parity++;
			else if (*status & UART_LSR_FE)
				port->icount.frame++;
			if (*status & UART_LSR_OE)
				port->icount.overrun++;

			/*
			 * Mask off conditions which should be ignored.
			 */
			*status &= port->read_status_mask;
			if (*status & UART_LSR_BI)
				flag = TTY_BREAK;
			else if (*status & UART_LSR_PE)
				flag = TTY_PARITY;
			else if (*status & UART_LSR_FE)
				flag = TTY_FRAME;
		}

		if ((*status & port->ignore_status_mask & ~UART_LSR_OE) == 0)
			FUNC2(&port->port, ch, flag);

		/*
		 * Overrun is special.  Since it's reported immediately,
		 * it doesn't affect the current character.
		 */
		if (*status & ~port->ignore_status_mask & UART_LSR_OE)
			FUNC2(&port->port, 0, TTY_OVERRUN);

		*status = FUNC0(port, UART_LSR);
	} while ((*status & UART_LSR_DR) && (max_count-- > 0));

	FUNC1(&port->port);
}