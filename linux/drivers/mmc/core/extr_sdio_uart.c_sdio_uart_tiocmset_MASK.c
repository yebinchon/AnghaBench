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
struct sdio_uart_port {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty,
			      unsigned int set, unsigned int clear)
{
	struct sdio_uart_port *port = tty->driver_data;
	int result;

	result = FUNC0(port);
	if (!result) {
		FUNC2(port, set, clear);
		FUNC1(port);
	}

	return result;
}