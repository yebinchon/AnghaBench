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
struct mx25_tsadc {int dummy; } ;
struct irq_domain {struct mx25_tsadc* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NOPROBE ; 
 int /*<<< orphan*/  IRQ_NOREQUEST ; 
 int /*<<< orphan*/  dummy_irq_chip ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct mx25_tsadc*) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d, unsigned int irq,
				 irq_hw_number_t hwirq)
{
	struct mx25_tsadc *tsadc = d->host_data;

	FUNC2(irq, tsadc);
	FUNC1(irq, &dummy_irq_chip,
				 handle_level_irq);
	FUNC0(irq, IRQ_NOREQUEST, IRQ_NOPROBE);

	return 0;
}