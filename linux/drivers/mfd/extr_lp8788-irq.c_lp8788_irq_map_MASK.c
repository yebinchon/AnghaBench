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
struct lp8788_irq_data {int dummy; } ;
struct irq_domain {struct lp8788_irq_data* host_data; } ;
struct irq_chip {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irq_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct lp8788_irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct irq_chip lp8788_irq_chip ; 

__attribute__((used)) static int FUNC4(struct irq_domain *d, unsigned int virq,
			irq_hw_number_t hwirq)
{
	struct lp8788_irq_data *irqd = d->host_data;
	struct irq_chip *chip = &lp8788_irq_chip;

	FUNC1(virq, irqd);
	FUNC0(virq, chip, handle_edge_irq);
	FUNC2(virq, 1);
	FUNC3(virq);

	return 0;
}