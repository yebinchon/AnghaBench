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
struct sdio_uart_port {scalar_t__ in_sdio_uart_irq; int /*<<< orphan*/  func_lock; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ current ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sdio_uart_port *port)
{
	FUNC1(&port->func_lock);
	if (FUNC4(!port->func)) {
		FUNC2(&port->func_lock);
		return -ENODEV;
	}
	if (FUNC0(port->in_sdio_uart_irq != current))
		FUNC3(port->func);
	FUNC2(&port->func_lock);
	return 0;
}