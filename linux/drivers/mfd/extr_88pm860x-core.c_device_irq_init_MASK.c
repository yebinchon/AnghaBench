#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pm860x_platform_data {int irq_base; scalar_t__ irq_mode; } ;
struct pm860x_chip {scalar_t__ id; int irq_mode; int irq_base; int /*<<< orphan*/  core_irq; TYPE_1__* dev; int /*<<< orphan*/  irq_lock; struct i2c_client* companion; struct i2c_client* client; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHIP_PM8607 ; 
 int EBUSY ; 
 int EINVAL ; 
 int INT_STATUS_NUM ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  PM8607_B0_MISC1 ; 
 int PM8607_B0_MISC1_INT_CLEAR ; 
 int PM8607_B0_MISC1_INT_MASK ; 
 int PM8607_B0_MISC1_INV_INT ; 
 int /*<<< orphan*/  PM8607_INT_MASK_1 ; 
 int /*<<< orphan*/  PM8607_INT_STATUS1 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pm860x_chip*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  pm860x_irq ; 
 int /*<<< orphan*/  pm860x_irq_domain_ops ; 
 int /*<<< orphan*/  pm860x_irqs ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,char*,struct pm860x_chip*) ; 

__attribute__((used)) static int FUNC10(struct pm860x_chip *chip,
				     struct pm860x_platform_data *pdata)
{
	struct i2c_client *i2c = (chip->id == CHIP_PM8607) ?
		chip->client : chip->companion;
	unsigned char status_buf[INT_STATUS_NUM];
	unsigned long flags = IRQF_TRIGGER_FALLING | IRQF_ONESHOT;
	int data, mask, ret = -EINVAL;
	int nr_irqs, irq_base = -1;
	struct device_node *node = i2c->dev.of_node;

	mask = PM8607_B0_MISC1_INV_INT | PM8607_B0_MISC1_INT_CLEAR
		| PM8607_B0_MISC1_INT_MASK;
	data = 0;
	chip->irq_mode = 0;
	if (pdata && pdata->irq_mode) {
		/*
		 * irq_mode defines the way of clearing interrupt. If it's 1,
		 * clear IRQ by write. Otherwise, clear it by read.
		 * This control bit is valid from 88PM8607 B0 steping.
		 */
		data |= PM8607_B0_MISC1_INT_CLEAR;
		chip->irq_mode = 1;
	}
	ret = FUNC8(i2c, PM8607_B0_MISC1, mask, data);
	if (ret < 0)
		goto out;

	/* mask all IRQs */
	FUNC4(status_buf, 0, INT_STATUS_NUM);
	ret = FUNC7(i2c, PM8607_INT_MASK_1,
				INT_STATUS_NUM, status_buf);
	if (ret < 0)
		goto out;

	if (chip->irq_mode) {
		/* clear interrupt status by write */
		FUNC4(status_buf, 0xFF, INT_STATUS_NUM);
		ret = FUNC7(i2c, PM8607_INT_STATUS1,
					INT_STATUS_NUM, status_buf);
	} else {
		/* clear interrupt status by read */
		ret = FUNC6(i2c, PM8607_INT_STATUS1,
					INT_STATUS_NUM, status_buf);
	}
	if (ret < 0)
		goto out;

	FUNC5(&chip->irq_lock);

	if (pdata && pdata->irq_base)
		irq_base = pdata->irq_base;
	nr_irqs = FUNC0(pm860x_irqs);
	chip->irq_base = FUNC2(irq_base, 0, nr_irqs, 0);
	if (chip->irq_base < 0) {
		FUNC1(&i2c->dev, "Failed to allocate interrupts, ret:%d\n",
			chip->irq_base);
		ret = -EBUSY;
		goto out;
	}
	FUNC3(node, nr_irqs, chip->irq_base, 0,
			      &pm860x_irq_domain_ops, chip);
	chip->core_irq = i2c->irq;
	if (!chip->core_irq)
		goto out;

	ret = FUNC9(chip->core_irq, NULL, pm860x_irq,
				   flags | IRQF_ONESHOT, "88pm860x", chip);
	if (ret) {
		FUNC1(chip->dev, "Failed to request IRQ: %d\n", ret);
		chip->core_irq = 0;
	}

	return 0;
out:
	chip->core_irq = 0;
	return ret;
}