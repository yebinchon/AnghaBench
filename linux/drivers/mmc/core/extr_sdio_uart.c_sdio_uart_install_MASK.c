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
struct tty_struct {int index; struct sdio_uart_port* driver_data; } ;
struct tty_driver {int dummy; } ;
struct sdio_uart_port {int dummy; } ;

/* Variables and functions */
 struct sdio_uart_port* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_uart_port*) ; 
 int FUNC2 (struct tty_driver*,struct tty_struct*) ; 

__attribute__((used)) static int FUNC3(struct tty_driver *driver, struct tty_struct *tty)
{
	int idx = tty->index;
	struct sdio_uart_port *port = FUNC0(idx);
	int ret = FUNC2(driver, tty);

	if (ret == 0)
		/* This is the ref sdio_uart_port get provided */
		tty->driver_data = port;
	else
		FUNC1(port);
	return ret;
}