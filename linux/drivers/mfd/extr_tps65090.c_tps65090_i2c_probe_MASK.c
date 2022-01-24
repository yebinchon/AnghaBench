#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tps65090_platform_data {int irq_base; } ;
struct tps65090 {int /*<<< orphan*/  irq_data; TYPE_2__* dev; int /*<<< orphan*/  rmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_2__ dev; } ;
struct TYPE_8__ {scalar_t__ num_resources; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t CHARGER ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 struct tps65090_platform_data* FUNC4 (TYPE_2__*) ; 
 struct tps65090* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct tps65090*) ; 
 int FUNC8 (TYPE_2__*,int,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tps65090_irq_chip ; 
 int /*<<< orphan*/  tps65090_regmap_config ; 
 TYPE_1__* tps65090s ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			      const struct i2c_device_id *id)
{
	struct tps65090_platform_data *pdata = FUNC4(&client->dev);
	int irq_base = 0;
	struct tps65090 *tps65090;
	int ret;

	if (!pdata && !client->dev.of_node) {
		FUNC3(&client->dev,
			"tps65090 requires platform data or of_node\n");
		return -EINVAL;
	}

	if (pdata)
		irq_base = pdata->irq_base;

	tps65090 = FUNC5(&client->dev, sizeof(*tps65090), GFP_KERNEL);
	if (!tps65090)
		return -ENOMEM;

	tps65090->dev = &client->dev;
	FUNC7(client, tps65090);

	tps65090->rmap = FUNC6(client, &tps65090_regmap_config);
	if (FUNC1(tps65090->rmap)) {
		ret = FUNC2(tps65090->rmap);
		FUNC3(&client->dev, "regmap_init failed with err: %d\n", ret);
		return ret;
	}

	if (client->irq) {
		ret = FUNC9(tps65090->rmap, client->irq,
					  IRQF_ONESHOT | IRQF_TRIGGER_LOW, irq_base,
					  &tps65090_irq_chip, &tps65090->irq_data);
		if (ret) {
			FUNC3(&client->dev,
				"IRQ init failed with err: %d\n", ret);
			return ret;
		}
	} else {
		/* Don't tell children they have an IRQ that'll never fire */
		tps65090s[CHARGER].num_resources = 0;
	}

	ret = FUNC8(tps65090->dev, -1, tps65090s,
			      FUNC0(tps65090s), NULL,
			      0, FUNC11(tps65090->irq_data));
	if (ret) {
		FUNC3(&client->dev, "add mfd devices failed with err: %d\n",
			ret);
		goto err_irq_exit;
	}

	return 0;

err_irq_exit:
	if (client->irq)
		FUNC10(client->irq, tps65090->irq_data);
	return ret;
}