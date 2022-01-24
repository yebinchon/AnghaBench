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
struct max8998_irq_data {int reg; int /*<<< orphan*/  mask; } ;
struct max8998_dev {int /*<<< orphan*/ * irq_masks_cur; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct max8998_dev* FUNC0 (struct irq_data*) ; 
 struct max8998_irq_data* FUNC1 (struct max8998_dev*,struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct max8998_dev *max8998 = FUNC0(data);
	struct max8998_irq_data *irq_data = FUNC1(max8998, data);

	max8998->irq_masks_cur[irq_data->reg - 1] |= irq_data->mask;
}