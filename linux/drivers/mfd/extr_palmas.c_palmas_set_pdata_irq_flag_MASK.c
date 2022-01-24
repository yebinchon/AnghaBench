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
struct palmas_platform_data {int /*<<< orphan*/  irq_flags; } ;
struct irq_data {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct irq_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *i2c,
		struct palmas_platform_data *pdata)
{
	struct irq_data *irq_data = FUNC2(i2c->irq);
	if (!irq_data) {
		FUNC0(&i2c->dev, "Invalid IRQ: %d\n", i2c->irq);
		return -EINVAL;
	}

	pdata->irq_flags = FUNC3(irq_data);
	FUNC1(&i2c->dev, "Irq flag is 0x%08x\n", pdata->irq_flags);
	return 0;
}