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
struct mantis_pci {int /*<<< orphan*/  uart_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_INT_IRQ1 ; 
 int /*<<< orphan*/  MANTIS_UART_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mantis_pci*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(struct mantis_pci *mantis)
{
	/* disable interrupt */
	FUNC1(mantis, MANTIS_INT_IRQ1);
	FUNC3(FUNC2(MANTIS_UART_CTL) & 0xffef, MANTIS_UART_CTL);
	FUNC0(&mantis->uart_work);
}