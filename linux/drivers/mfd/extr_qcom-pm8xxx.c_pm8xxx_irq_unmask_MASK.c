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
typedef  unsigned int u8 ;
struct pm_irq_chip {unsigned int* config; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct pm_irq_chip* FUNC0 (struct irq_data*) ; 
 unsigned int FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct pm_irq_chip*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct pm_irq_chip *chip = FUNC0(d);
	unsigned int pmirq = FUNC1(d);
	u8	block, config;

	block = pmirq / 8;

	config = chip->config[pmirq];
	FUNC2(chip, block, config);
}