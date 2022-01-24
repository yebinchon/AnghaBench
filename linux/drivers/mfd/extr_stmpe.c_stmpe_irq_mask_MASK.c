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
struct stmpe {int* ier; } ;
struct irq_data {int hwirq; } ;

/* Variables and functions */
 struct stmpe* FUNC0 (struct irq_data*) ; 

__attribute__((used)) static void FUNC1(struct irq_data *data)
{
	struct stmpe *stmpe = FUNC0(data);
	int offset = data->hwirq;
	int regoffset = offset / 8;
	int mask = 1 << (offset % 8);

	stmpe->ier[regoffset] &= ~mask;
}