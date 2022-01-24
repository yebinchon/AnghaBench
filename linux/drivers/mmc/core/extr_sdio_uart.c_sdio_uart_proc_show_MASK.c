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
struct seq_file {int dummy; } ;
struct TYPE_2__ {int frame; int parity; int brk; int overrun; int cts; int dsr; int rng; int dcd; int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; } ;
struct sdio_uart_port {TYPE_1__ icount; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int UART_NR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdio_uart_port* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, void *v)
{
	int i;

	FUNC3(m, "serinfo:1.0 driver%s%s revision:%s\n",
		       "", "", "");
	for (i = 0; i < UART_NR; i++) {
		struct sdio_uart_port *port = FUNC1(i);
		if (port) {
			FUNC3(m, "%d: uart:SDIO", i);
			if (FUNC0(CAP_SYS_ADMIN)) {
				FUNC3(m, " tx:%d rx:%d",
					      port->icount.tx, port->icount.rx);
				if (port->icount.frame)
					FUNC3(m, " fe:%d",
						      port->icount.frame);
				if (port->icount.parity)
					FUNC3(m, " pe:%d",
						      port->icount.parity);
				if (port->icount.brk)
					FUNC3(m, " brk:%d",
						      port->icount.brk);
				if (port->icount.overrun)
					FUNC3(m, " oe:%d",
						      port->icount.overrun);
				if (port->icount.cts)
					FUNC3(m, " cts:%d",
						      port->icount.cts);
				if (port->icount.dsr)
					FUNC3(m, " dsr:%d",
						      port->icount.dsr);
				if (port->icount.rng)
					FUNC3(m, " rng:%d",
						      port->icount.rng);
				if (port->icount.dcd)
					FUNC3(m, " dcd:%d",
						      port->icount.dcd);
			}
			FUNC2(port);
			FUNC4(m, '\n');
		}
	}
	return 0;
}