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
struct pm860x_irq_data {int reg; int enable; } ;
struct pm860x_chip {scalar_t__ id; scalar_t__ irq_base; struct i2c_client* companion; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (struct pm860x_irq_data*) ; 
 scalar_t__ CHIP_PM8607 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct pm860x_irq_data* pm860x_irqs ; 
 int FUNC2 (struct i2c_client*,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct pm860x_chip *chip = data;
	struct pm860x_irq_data *irq_data;
	struct i2c_client *i2c;
	int read_reg = -1, value = 0;
	int i;

	i2c = (chip->id == CHIP_PM8607) ? chip->client : chip->companion;
	for (i = 0; i < FUNC0(pm860x_irqs); i++) {
		irq_data = &pm860x_irqs[i];
		if (read_reg != irq_data->reg) {
			read_reg = irq_data->reg;
			value = FUNC2(i2c, irq_data->reg);
		}
		if (value & irq_data->enable)
			FUNC1(chip->irq_base + i);
	}
	return IRQ_HANDLED;
}