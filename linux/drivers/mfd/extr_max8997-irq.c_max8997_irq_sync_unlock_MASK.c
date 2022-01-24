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
typedef  scalar_t__ u8 ;
struct max8997_dev {int /*<<< orphan*/  irqlock; int /*<<< orphan*/ * irq_masks_cur; int /*<<< orphan*/ * irq_masks_cache; } ;
struct irq_data {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i2c_client*) ; 
 int MAX8997_IRQ_GROUP_NR ; 
 scalar_t__ MAX8997_REG_INVALID ; 
 struct i2c_client* FUNC1 (struct max8997_dev*,int) ; 
 struct max8997_dev* FUNC2 (struct irq_data*) ; 
 scalar_t__* max8997_mask_reg ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct max8997_dev *max8997 = FUNC2(data);
	int i;

	for (i = 0; i < MAX8997_IRQ_GROUP_NR; i++) {
		u8 mask_reg = max8997_mask_reg[i];
		struct i2c_client *i2c = FUNC1(max8997, i);

		if (mask_reg == MAX8997_REG_INVALID ||
				FUNC0(i2c))
			continue;
		max8997->irq_masks_cache[i] = max8997->irq_masks_cur[i];

		FUNC3(i2c, max8997_mask_reg[i],
				max8997->irq_masks_cur[i]);
	}

	FUNC4(&max8997->irqlock);
}