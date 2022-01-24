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
struct max8998_dev {scalar_t__* irq_masks_cur; scalar_t__* irq_masks_cache; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  i2c; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ MAX8998_REG_IRQM1 ; 
 struct max8998_dev* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	struct max8998_dev *max8998 = FUNC1(data);
	int i;

	for (i = 0; i < FUNC0(max8998->irq_masks_cur); i++) {
		/*
		 * If there's been a change in the mask write it back
		 * to the hardware.
		 */
		if (max8998->irq_masks_cur[i] != max8998->irq_masks_cache[i]) {
			max8998->irq_masks_cache[i] = max8998->irq_masks_cur[i];
			FUNC2(max8998->i2c, MAX8998_REG_IRQM1 + i,
					max8998->irq_masks_cur[i]);
		}
	}

	FUNC3(&max8998->irqlock);
}