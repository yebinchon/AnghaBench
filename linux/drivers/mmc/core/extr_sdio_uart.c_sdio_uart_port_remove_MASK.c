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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct sdio_uart_port {size_t index; TYPE_1__ port; int /*<<< orphan*/  func_lock; struct sdio_func* func; } ;
struct sdio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/ ** sdio_uart_table ; 
 int /*<<< orphan*/  sdio_uart_table_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC10(struct sdio_uart_port *port)
{
	struct sdio_func *func;

	FUNC7(&sdio_uart_table_lock);
	sdio_uart_table[port->index] = NULL;
	FUNC8(&sdio_uart_table_lock);

	/*
	 * We're killing a port that potentially still is in use by
	 * the tty layer. Be careful to prevent any further access
	 * to the SDIO function and arrange for the tty layer to
	 * give up on that port ASAP.
	 * Beware: the lock ordering is critical.
	 */
	FUNC0(&port->port.mutex);
	FUNC0(&port->func_lock);
	func = port->func;
	FUNC2(func);
	port->func = NULL;
	FUNC1(&port->func_lock);
	/* tty_hangup is async so is this safe as is ?? */
	FUNC9(&port->port, false);
	FUNC1(&port->port.mutex);
	FUNC5(func);
	FUNC3(func);
	FUNC4(func);

	FUNC6(port);
}