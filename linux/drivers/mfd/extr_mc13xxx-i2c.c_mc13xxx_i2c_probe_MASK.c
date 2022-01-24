#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct of_device_id {void* data; } ;
struct mc13xxx {void* variant; int /*<<< orphan*/  regmap; int /*<<< orphan*/  irq; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct mc13xxx*) ; 
 struct mc13xxx* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  mc13xxx_dt_ids ; 
 int /*<<< orphan*/  mc13xxx_regmap_i2c_config ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct mc13xxx *mc13xxx;
	int ret;

	mc13xxx = FUNC4(&client->dev, sizeof(*mc13xxx), GFP_KERNEL);
	if (!mc13xxx)
		return -ENOMEM;

	FUNC3(&client->dev, mc13xxx);

	mc13xxx->irq = client->irq;

	mc13xxx->regmap = FUNC5(client,
					       &mc13xxx_regmap_i2c_config);
	if (FUNC0(mc13xxx->regmap)) {
		ret = FUNC1(mc13xxx->regmap);
		FUNC2(&client->dev, "Failed to initialize regmap: %d\n", ret);
		return ret;
	}

	if (client->dev.of_node) {
		const struct of_device_id *of_id =
			FUNC7(mc13xxx_dt_ids, &client->dev);
		mc13xxx->variant = of_id->data;
	} else {
		mc13xxx->variant = (void *)id->driver_data;
	}

	return FUNC6(&client->dev);
}