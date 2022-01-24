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
struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int /*<<< orphan*/  func; int /*<<< orphan*/  x_char; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  TIOCM_RTS ; 
 scalar_t__ FUNC3 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_uart_port*) ; 

__attribute__((used)) static void FUNC8(struct tty_struct *tty)
{
	struct sdio_uart_port *port = tty->driver_data;

	if (!FUNC1(tty) && !FUNC0(tty))
		return;

	if (FUNC3(port) != 0)
		return;

	if (FUNC1(tty)) {
		port->x_char = FUNC2(tty);
		FUNC7(port);
	}

	if (FUNC0(tty))
		FUNC4(port, TIOCM_RTS);

	FUNC5(port->func);
	FUNC6(port);
}