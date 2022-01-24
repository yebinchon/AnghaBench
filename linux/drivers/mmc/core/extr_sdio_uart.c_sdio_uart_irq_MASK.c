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
struct sdio_uart_port {int /*<<< orphan*/ * in_sdio_uart_irq; } ;
struct sdio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IIR ; 
 unsigned int UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned int UART_LSR_DR ; 
 unsigned int UART_LSR_THRE ; 
 int /*<<< orphan*/ * current ; 
 struct sdio_uart_port* FUNC0 (struct sdio_func*) ; 
 unsigned int FUNC1 (struct sdio_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_uart_port*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_uart_port*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct sdio_func *func)
{
	struct sdio_uart_port *port = FUNC0(func);
	unsigned int iir, lsr;

	/*
	 * In a few places sdio_uart_irq() is called directly instead of
	 * waiting for the actual interrupt to be raised and the SDIO IRQ
	 * thread scheduled in order to reduce latency.  However, some
	 * interaction with the tty core may end up calling us back
	 * (serial echo, flow control, etc.) through those same places
	 * causing undesirable effects.  Let's stop the recursion here.
	 */
	if (FUNC5(port->in_sdio_uart_irq == current))
		return;

	iir = FUNC1(port, UART_IIR);
	if (iir & UART_IIR_NO_INT)
		return;

	port->in_sdio_uart_irq = current;
	lsr = FUNC1(port, UART_LSR);
	if (lsr & UART_LSR_DR)
		FUNC3(port, &lsr);
	FUNC2(port);
	if (lsr & UART_LSR_THRE)
		FUNC4(port);
	port->in_sdio_uart_irq = NULL;
}