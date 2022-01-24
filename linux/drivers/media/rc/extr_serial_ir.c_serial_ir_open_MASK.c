#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rc_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  lastkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_MSI ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_DLAB ; 
 TYPE_2__* hardware ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ serial_ir ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 size_t type ; 

__attribute__((used)) static int FUNC5(struct rc_dev *rcdev)
{
	unsigned long flags;

	/* initialize timestamp */
	serial_ir.lastkt = FUNC0();

	FUNC3(&hardware[type].lock, flags);

	/* Set DLAB 0. */
	FUNC2(UART_LCR, FUNC1(UART_LCR) & (~UART_LCR_DLAB));

	FUNC2(UART_IER, FUNC1(UART_IER) | UART_IER_MSI);

	FUNC4(&hardware[type].lock, flags);

	return 0;
}