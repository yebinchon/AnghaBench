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
struct irq_data {int irq; } ;
struct htcpld_chip {int irqs_enabled; int irq_start; } ;

/* Variables and functions */
 struct htcpld_chip* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct htcpld_chip *chip = FUNC0(data);
	chip->irqs_enabled &= ~(1 << (data->irq - chip->irq_start));
	FUNC1("HTCPLD mask %d %04x\n", data->irq, chip->irqs_enabled);
}