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
struct pm860x_irq_data {int mask_reg; unsigned char offs; unsigned char enable; } ;
struct pm860x_chip {scalar_t__ id; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  dev; struct i2c_client* companion; struct i2c_client* client; } ;
struct irq_data {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pm860x_irq_data*) ; 
 scalar_t__ CHIP_PM8607 ; 
#define  PM8607_INT_MASK_1 130 
#define  PM8607_INT_MASK_2 129 
#define  PM8607_INT_MASK_3 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct pm860x_chip* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pm860x_irq_data* pm860x_irqs ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int const,unsigned char) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct pm860x_chip *chip = FUNC2(data);
	struct pm860x_irq_data *irq_data;
	struct i2c_client *i2c;
	static unsigned char cached[3] = {0x0, 0x0, 0x0};
	unsigned char mask[3];
	int i;

	i2c = (chip->id == CHIP_PM8607) ? chip->client : chip->companion;
	/* Load cached value. In initial, all IRQs are masked */
	for (i = 0; i < 3; i++)
		mask[i] = cached[i];
	for (i = 0; i < FUNC0(pm860x_irqs); i++) {
		irq_data = &pm860x_irqs[i];
		switch (irq_data->mask_reg) {
		case PM8607_INT_MASK_1:
			mask[0] &= ~irq_data->offs;
			mask[0] |= irq_data->enable;
			break;
		case PM8607_INT_MASK_2:
			mask[1] &= ~irq_data->offs;
			mask[1] |= irq_data->enable;
			break;
		case PM8607_INT_MASK_3:
			mask[2] &= ~irq_data->offs;
			mask[2] |= irq_data->enable;
			break;
		default:
			FUNC1(chip->dev, "wrong IRQ\n");
			break;
		}
	}
	/* update mask into registers */
	for (i = 0; i < 3; i++) {
		if (mask[i] != cached[i]) {
			cached[i] = mask[i];
			FUNC4(i2c, PM8607_INT_MASK_1 + i, mask[i]);
		}
	}

	FUNC3(&chip->irq_lock);
}