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
struct mt6397_chip {int /*<<< orphan*/ * irq_masks_cur; } ;
struct irq_data {int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mt6397_chip* FUNC1 (struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct mt6397_chip *mt6397 = FUNC1(data);
	int shift = data->hwirq & 0xf;
	int reg = data->hwirq >> 4;

	mt6397->irq_masks_cur[reg] |= FUNC0(shift);
}