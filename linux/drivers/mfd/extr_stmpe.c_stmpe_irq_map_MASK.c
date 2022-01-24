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
struct stmpe {TYPE_1__* variant; } ;
struct irq_domain {struct stmpe* host_data; } ;
struct irq_chip {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_2__ {scalar_t__ id_val; } ;

/* Variables and functions */
 scalar_t__ STMPE801_ID ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irq_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct stmpe*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct irq_chip stmpe_irq_chip ; 

__attribute__((used)) static int FUNC4(struct irq_domain *d, unsigned int virq,
                                irq_hw_number_t hwirq)
{
	struct stmpe *stmpe = d->host_data;
	struct irq_chip *chip = NULL;

	if (stmpe->variant->id_val != STMPE801_ID)
		chip = &stmpe_irq_chip;

	FUNC1(virq, stmpe);
	FUNC0(virq, chip, handle_edge_irq);
	FUNC2(virq, 1);
	FUNC3(virq);

	return 0;
}