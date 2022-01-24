#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_1__ dev; scalar_t__ irq; } ;
struct as3711_platform_data {int /*<<< orphan*/  backlight; int /*<<< orphan*/  regulator; } ;
struct as3711 {TYPE_1__* dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_12__ {int pdata_size; int /*<<< orphan*/ * platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  AS3711_ASIC_ID_1 ; 
 int /*<<< orphan*/  AS3711_ASIC_ID_2 ; 
 size_t AS3711_BACKLIGHT ; 
 size_t AS3711_REGULATOR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  as3711_regmap_config ; 
 TYPE_2__* as3711_subdevs ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 struct as3711_platform_data* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 void* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct as3711*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct as3711 *as3711;
	struct as3711_platform_data *pdata;
	unsigned int id1, id2;
	int ret;

	if (!client->dev.of_node) {
		pdata = FUNC5(&client->dev);
		if (!pdata)
			FUNC3(&client->dev, "Platform data not found\n");
	} else {
		pdata = FUNC8(&client->dev,
				     sizeof(*pdata), GFP_KERNEL);
		if (!pdata)
			return -ENOMEM;
	}

	as3711 = FUNC8(&client->dev, sizeof(struct as3711), GFP_KERNEL);
	if (!as3711)
		return -ENOMEM;

	as3711->dev = &client->dev;
	FUNC11(client, as3711);

	if (client->irq)
		FUNC7(&client->dev, "IRQ not supported yet\n");

	as3711->regmap = FUNC10(client, &as3711_regmap_config);
	if (FUNC1(as3711->regmap)) {
		ret = FUNC2(as3711->regmap);
		FUNC4(&client->dev,
			"regmap initialization failed: %d\n", ret);
		return ret;
	}

	ret = FUNC12(as3711->regmap, AS3711_ASIC_ID_1, &id1);
	if (!ret)
		ret = FUNC12(as3711->regmap, AS3711_ASIC_ID_2, &id2);
	if (ret < 0) {
		FUNC4(&client->dev, "regmap_read() failed: %d\n", ret);
		return ret;
	}
	if (id1 != 0x8b)
		return -ENODEV;
	FUNC6(as3711->dev, "AS3711 detected: %x:%x\n", id1, id2);

	/*
	 * We can reuse as3711_subdevs[],
	 * it will be copied in mfd_add_devices()
	 */
	if (pdata) {
		as3711_subdevs[AS3711_REGULATOR].platform_data =
			&pdata->regulator;
		as3711_subdevs[AS3711_REGULATOR].pdata_size =
			sizeof(pdata->regulator);
		as3711_subdevs[AS3711_BACKLIGHT].platform_data =
			&pdata->backlight;
		as3711_subdevs[AS3711_BACKLIGHT].pdata_size =
			sizeof(pdata->backlight);
	} else {
		as3711_subdevs[AS3711_REGULATOR].platform_data = NULL;
		as3711_subdevs[AS3711_REGULATOR].pdata_size = 0;
		as3711_subdevs[AS3711_BACKLIGHT].platform_data = NULL;
		as3711_subdevs[AS3711_BACKLIGHT].pdata_size = 0;
	}

	ret = FUNC9(as3711->dev, -1, as3711_subdevs,
				   FUNC0(as3711_subdevs), NULL, 0, NULL);
	if (ret < 0)
		FUNC4(&client->dev, "add mfd devices failed: %d\n", ret);

	return ret;
}