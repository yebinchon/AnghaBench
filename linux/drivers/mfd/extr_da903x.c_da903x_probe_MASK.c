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
struct i2c_device_id {size_t driver_data; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct da903x_platform_data {int dummy; } ;
struct da903x_chip {int events_mask; TYPE_1__* ops; int /*<<< orphan*/  notifier_list; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; struct i2c_client* client; } ;
struct TYPE_2__ {int (* init_chip ) (struct da903x_chip*) ;int /*<<< orphan*/  (* read_events ) (struct da903x_chip*,unsigned int*) ;int /*<<< orphan*/  (* mask_events ) (struct da903x_chip*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int FUNC2 (struct da903x_chip*,struct da903x_platform_data*) ; 
 int /*<<< orphan*/  da903x_irq_handler ; 
 int /*<<< orphan*/  da903x_irq_work ; 
 TYPE_1__* da903x_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct da903x_platform_data* FUNC4 (int /*<<< orphan*/ *) ; 
 struct da903x_chip* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct da903x_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct da903x_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct da903x_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct da903x_chip*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct da903x_chip*,unsigned int*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
				  const struct i2c_device_id *id)
{
	struct da903x_platform_data *pdata = FUNC4(&client->dev);
	struct da903x_chip *chip;
	unsigned int tmp;
	int ret;

	chip = FUNC5(&client->dev, sizeof(struct da903x_chip),
				GFP_KERNEL);
	if (chip == NULL)
		return -ENOMEM;

	chip->client = client;
	chip->dev = &client->dev;
	chip->ops = &da903x_ops[id->driver_data];

	FUNC8(&chip->lock);
	FUNC1(&chip->irq_work, da903x_irq_work);
	FUNC0(&chip->notifier_list);

	FUNC7(client, chip);

	ret = chip->ops->init_chip(chip);
	if (ret)
		return ret;

	/* mask and clear all IRQs */
	chip->events_mask = 0xffffffff;
	chip->ops->mask_events(chip, chip->events_mask);
	chip->ops->read_events(chip, &tmp);

	ret = FUNC6(&client->dev, client->irq, da903x_irq_handler,
			IRQF_TRIGGER_FALLING,
			"da903x", chip);
	if (ret) {
		FUNC3(&client->dev, "failed to request irq %d\n",
				client->irq);
		return ret;
	}

	return FUNC2(chip, pdata);
}