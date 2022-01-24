#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct irq_data {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  irq; } ;
struct device_node {int dummy; } ;
struct as3722 {int /*<<< orphan*/  irq_flags; void* en_ac_ok_pwr_on; void* en_intern_i2c_pullup; void* en_intern_int_pullup; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 struct irq_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 void* FUNC4 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *i2c,
			struct as3722 *as3722)
{
	struct device_node *np = i2c->dev.of_node;
	struct irq_data *irq_data;

	if (!np) {
		FUNC1(&i2c->dev, "Device Tree not found\n");
		return -EINVAL;
	}

	irq_data = FUNC2(i2c->irq);
	if (!irq_data) {
		FUNC1(&i2c->dev, "Invalid IRQ: %d\n", i2c->irq);
		return -EINVAL;
	}

	as3722->en_intern_int_pullup = FUNC4(np,
					"ams,enable-internal-int-pullup");
	as3722->en_intern_i2c_pullup = FUNC4(np,
					"ams,enable-internal-i2c-pullup");
	as3722->en_ac_ok_pwr_on = FUNC4(np,
					"ams,enable-ac-ok-power-on");
	as3722->irq_flags = FUNC3(irq_data);
	FUNC0(&i2c->dev, "IRQ flags are 0x%08lx\n", as3722->irq_flags);
	return 0;
}