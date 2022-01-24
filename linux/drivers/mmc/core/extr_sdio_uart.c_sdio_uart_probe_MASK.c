#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * ops; } ;
struct sdio_uart_port {int regs_offset; int uartclk; int /*<<< orphan*/  index; TYPE_1__ port; struct sdio_func* func; } ;
struct sdio_func_tuple {int code; int size; int* data; struct sdio_func_tuple* next; } ;
struct sdio_func {scalar_t__ class; int /*<<< orphan*/  dev; struct sdio_func_tuple* tuples; } ;
struct sdio_device_id {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 scalar_t__ SDIO_CLASS_GPS ; 
 scalar_t__ SDIO_CLASS_UART ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*) ; 
 struct sdio_uart_port* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*,struct sdio_uart_port*) ; 
 int FUNC8 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  sdio_uart_port_ops ; 
 int /*<<< orphan*/  FUNC9 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  sdio_uart_tty_driver ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 struct device* FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct sdio_func *func,
			   const struct sdio_device_id *id)
{
	struct sdio_uart_port *port;
	int ret;

	port = FUNC3(sizeof(struct sdio_uart_port), GFP_KERNEL);
	if (!port)
		return -ENOMEM;

	if (func->class == SDIO_CLASS_UART) {
		FUNC5("%s: need info on UART class basic setup\n",
			FUNC6(func));
		FUNC2(port);
		return -ENOSYS;
	} else if (func->class == SDIO_CLASS_GPS) {
		/*
		 * We need tuple 0x91.  It contains SUBTPL_SIOREG
		 * and SUBTPL_RCVCAPS.
		 */
		struct sdio_func_tuple *tpl;
		for (tpl = func->tuples; tpl; tpl = tpl->next) {
			if (tpl->code != 0x91)
				continue;
			if (tpl->size < 10)
				continue;
			if (tpl->data[1] == 0)  /* SUBTPL_SIOREG */
				break;
		}
		if (!tpl) {
			FUNC5("%s: can't find tuple 0x91 subtuple 0 (SUBTPL_SIOREG) for GPS class\n",
				FUNC6(func));
			FUNC2(port);
			return -EINVAL;
		}
		FUNC4("%s: Register ID = 0x%02x, Exp ID = 0x%02x\n",
		       FUNC6(func), tpl->data[2], tpl->data[3]);
		port->regs_offset = (tpl->data[4] << 0) |
				    (tpl->data[5] << 8) |
				    (tpl->data[6] << 16);
		FUNC4("%s: regs offset = 0x%x\n",
		       FUNC6(func), port->regs_offset);
		port->uartclk = tpl->data[7] * 115200;
		if (port->uartclk == 0)
			port->uartclk = 115200;
		FUNC4("%s: clk %d baudcode %u 4800-div %u\n",
		       FUNC6(func), port->uartclk,
		       tpl->data[7], tpl->data[8] | (tpl->data[9] << 8));
	} else {
		FUNC2(port);
		return -EINVAL;
	}

	port->func = func;
	FUNC7(func, port);
	FUNC10(&port->port);
	port->port.ops = &sdio_uart_port_ops;

	ret = FUNC8(port);
	if (ret) {
		FUNC2(port);
	} else {
		struct device *dev;
		dev = FUNC11(&port->port,
				sdio_uart_tty_driver, port->index, &func->dev);
		if (FUNC0(dev)) {
			FUNC9(port);
			ret = FUNC1(dev);
		}
	}

	return ret;
}