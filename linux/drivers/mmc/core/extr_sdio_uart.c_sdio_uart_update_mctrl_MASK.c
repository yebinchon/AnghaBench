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
struct sdio_uart_port {unsigned int mctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdio_uart_port*,unsigned int) ; 

__attribute__((used)) static inline void FUNC1(struct sdio_uart_port *port,
					  unsigned int set, unsigned int clear)
{
	unsigned int old;

	old = port->mctrl;
	port->mctrl = (old & ~clear) | set;
	if (old != port->mctrl)
		FUNC0(port, port->mctrl);
}