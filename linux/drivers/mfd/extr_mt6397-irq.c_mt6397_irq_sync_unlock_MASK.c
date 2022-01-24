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
struct mt6397_chip {int /*<<< orphan*/  irqlock; int /*<<< orphan*/ * irq_masks_cur; int /*<<< orphan*/ * int_con; int /*<<< orphan*/  regmap; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct mt6397_chip* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *data)
{
	struct mt6397_chip *mt6397 = FUNC0(data);

	FUNC2(mt6397->regmap, mt6397->int_con[0],
		     mt6397->irq_masks_cur[0]);
	FUNC2(mt6397->regmap, mt6397->int_con[1],
		     mt6397->irq_masks_cur[1]);

	FUNC1(&mt6397->irqlock);
}