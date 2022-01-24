#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tps65217 {TYPE_2__* dev; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  regmap; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; TYPE_2__ dev; } ;
struct TYPE_9__ {scalar_t__ num_resources; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int TPS65217_CHIPID_CHIP_MASK ; 
 unsigned int TPS65217_CHIPID_REV_MASK ; 
 int /*<<< orphan*/  TPS65217_PROTECT_NONE ; 
 int /*<<< orphan*/  TPS65217_REG_CHIPID ; 
 int /*<<< orphan*/  TPS65217_REG_STATUS ; 
 int /*<<< orphan*/  TPS65217_STATUS_OFF ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 struct tps65217* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct tps65217*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct tps65217*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct tps65217*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  tps65217_regmap_config ; 
 int FUNC13 (struct tps65217*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* tps65217s ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client)
{
	struct tps65217 *tps;
	unsigned int version;
	bool status_off = false;
	int ret;

	status_off = FUNC10(client->dev.of_node,
					   "ti,pmic-shutdown-controller");

	tps = FUNC6(&client->dev, sizeof(*tps), GFP_KERNEL);
	if (!tps)
		return -ENOMEM;

	FUNC9(client, tps);
	tps->dev = &client->dev;

	tps->regmap = FUNC8(client, &tps65217_regmap_config);
	if (FUNC1(tps->regmap)) {
		ret = FUNC2(tps->regmap);
		FUNC3(tps->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	if (client->irq) {
		FUNC11(tps, client->irq);
	} else {
		int i;

		/* Don't tell children about IRQ resources which won't fire */
		for (i = 0; i < FUNC0(tps65217s); i++)
			tps65217s[i].num_resources = 0;
	}

	ret = FUNC7(tps->dev, -1, tps65217s,
				   FUNC0(tps65217s), NULL, 0,
				   tps->irq_domain);
	if (ret < 0) {
		FUNC3(tps->dev, "mfd_add_devices failed: %d\n", ret);
		return ret;
	}

	ret = FUNC12(tps, TPS65217_REG_CHIPID, &version);
	if (ret < 0) {
		FUNC3(tps->dev, "Failed to read revision register: %d\n",
			ret);
		return ret;
	}

	/* Set the PMIC to shutdown on PWR_EN toggle */
	if (status_off) {
		ret = FUNC13(tps, TPS65217_REG_STATUS,
				TPS65217_STATUS_OFF, TPS65217_STATUS_OFF,
				TPS65217_PROTECT_NONE);
		if (ret)
			FUNC5(tps->dev, "unable to set the status OFF\n");
	}

	FUNC4(tps->dev, "TPS65217 ID %#x version 1.%d\n",
			(version & TPS65217_CHIPID_CHIP_MASK) >> 4,
			version & TPS65217_CHIPID_REV_MASK);

	return 0;
}