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
struct rc_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_MSI ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int UART_IER_THRI ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_DLAB ; 
 TYPE_1__* hardware ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 size_t type ; 

__attribute__((used)) static void FUNC4(struct rc_dev *rcdev)
{
	unsigned long flags;

	FUNC2(&hardware[type].lock, flags);

	/* Set DLAB 0. */
	FUNC1(UART_LCR, FUNC0(UART_LCR) & (~UART_LCR_DLAB));

	/* First of all, disable all interrupts */
	FUNC1(UART_IER, FUNC0(UART_IER) &
	      (~(UART_IER_MSI | UART_IER_RLSI | UART_IER_THRI | UART_IER_RDI)));
	FUNC3(&hardware[type].lock, flags);
}