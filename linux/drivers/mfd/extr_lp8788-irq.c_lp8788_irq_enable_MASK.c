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
struct lp8788_irq_data {int* enabled; } ;
struct irq_data {size_t hwirq; } ;

/* Variables and functions */
 struct lp8788_irq_data* FUNC0 (struct irq_data*) ; 

__attribute__((used)) static void FUNC1(struct irq_data *data)
{
	struct lp8788_irq_data *irqd = FUNC0(data);

	irqd->enabled[data->hwirq] = 1;
}