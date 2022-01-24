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
struct sdio_uart_port {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 unsigned int UART_NR ; 
 struct sdio_uart_port** sdio_uart_table ; 
 int /*<<< orphan*/  sdio_uart_table_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sdio_uart_port *FUNC3(unsigned index)
{
	struct sdio_uart_port *port;

	if (index >= UART_NR)
		return NULL;

	FUNC0(&sdio_uart_table_lock);
	port = sdio_uart_table[index];
	if (port)
		FUNC2(&port->port);
	FUNC1(&sdio_uart_table_lock);

	return port;
}