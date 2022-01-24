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
struct tps65217 {int /*<<< orphan*/  irq; } ;
struct irq_domain {struct tps65217* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct tps65217*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tps65217_irq_chip ; 

__attribute__((used)) static int FUNC5(struct irq_domain *h, unsigned int virq,
			irq_hw_number_t hw)
{
	struct tps65217 *tps = h->host_data;

	FUNC1(virq, tps);
	FUNC0(virq, &tps65217_irq_chip, handle_edge_irq);
	FUNC2(virq, 1);
	FUNC4(virq, tps->irq);
	FUNC3(virq);

	return 0;
}