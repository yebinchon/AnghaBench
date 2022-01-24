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
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct mv88e6xxx_chip {TYPE_1__ g1_irq; } ;
struct irq_domain {struct mv88e6xxx_chip* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d,
				       unsigned int irq,
				       irq_hw_number_t hwirq)
{
	struct mv88e6xxx_chip *chip = d->host_data;

	FUNC1(irq, d->host_data);
	FUNC0(irq, &chip->g1_irq.chip, handle_level_irq);
	FUNC2(irq);

	return 0;
}