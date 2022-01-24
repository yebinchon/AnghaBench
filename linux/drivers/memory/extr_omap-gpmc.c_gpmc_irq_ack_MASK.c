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
struct irq_data {unsigned int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  GPMC_IRQSTATUS ; 
 unsigned int GPMC_NR_NAND_IRQS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	unsigned int hwirq = d->hwirq;

	/* skip reserved bits */
	if (hwirq >= GPMC_NR_NAND_IRQS)
		hwirq += 8 - GPMC_NR_NAND_IRQS;

	/* Setting bit to 1 clears (or Acks) the interrupt */
	FUNC1(GPMC_IRQSTATUS, FUNC0(hwirq));
}