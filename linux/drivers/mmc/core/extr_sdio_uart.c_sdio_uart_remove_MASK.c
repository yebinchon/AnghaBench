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
struct sdio_uart_port {int /*<<< orphan*/  index; } ;
struct sdio_func {int dummy; } ;

/* Variables and functions */
 struct sdio_uart_port* FUNC0 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  sdio_uart_tty_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sdio_func *func)
{
	struct sdio_uart_port *port = FUNC0(func);

	FUNC2(sdio_uart_tty_driver, port->index);
	FUNC1(port);
}