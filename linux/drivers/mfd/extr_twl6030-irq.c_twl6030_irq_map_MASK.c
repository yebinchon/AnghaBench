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
struct twl6030_irq {int /*<<< orphan*/  twl_irq; int /*<<< orphan*/  irq_chip; } ;
struct irq_domain {struct twl6030_irq* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct twl6030_irq*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *d, unsigned int virq,
			      irq_hw_number_t hwirq)
{
	struct twl6030_irq *pdata = d->host_data;

	FUNC1(virq, pdata);
	FUNC0(virq,  &pdata->irq_chip, handle_simple_irq);
	FUNC2(virq, true);
	FUNC4(virq, pdata->twl_irq);
	FUNC3(virq);

	return 0;
}