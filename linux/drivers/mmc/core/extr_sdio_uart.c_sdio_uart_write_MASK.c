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
struct sdio_uart_port {int ier; int /*<<< orphan*/  func; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  xmit_fifo; } ;

/* Variables and functions */
 int ENODEV ; 
 int UART_IER_THRI ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_uart_port*) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, const unsigned char *buf,
			   int count)
{
	struct sdio_uart_port *port = tty->driver_data;
	int ret;

	if (!port->func)
		return -ENODEV;

	ret = FUNC0(&port->xmit_fifo, buf, count, &port->write_lock);
	if (!(port->ier & UART_IER_THRI)) {
		int err = FUNC1(port);
		if (!err) {
			FUNC4(port);
			FUNC2(port->func);
			FUNC3(port);
		} else
			ret = err;
	}

	return ret;
}