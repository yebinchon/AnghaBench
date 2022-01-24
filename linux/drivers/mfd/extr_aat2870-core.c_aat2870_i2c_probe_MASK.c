#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct aat2870_platform_data {int en_pin; int num_subdevs; TYPE_1__* subdevs; int /*<<< orphan*/  uninit; int /*<<< orphan*/  (* init ) (struct aat2870_data*) ;} ;
struct aat2870_data {int en_pin; int /*<<< orphan*/ * dev; int /*<<< orphan*/  (* init ) (struct aat2870_data*) ;int /*<<< orphan*/  io_lock; int /*<<< orphan*/  update; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  uninit; int /*<<< orphan*/  reg_cache; struct i2c_client* client; } ;
struct TYPE_6__ {scalar_t__ id; int /*<<< orphan*/  platform_data; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {scalar_t__ id; int /*<<< orphan*/  platform_data; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_HIGH ; 
 TYPE_2__* aat2870_devs ; 
 int /*<<< orphan*/  FUNC1 (struct aat2870_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct aat2870_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct aat2870_data*) ; 
 int /*<<< orphan*/  aat2870_read ; 
 int /*<<< orphan*/  aat2870_regs ; 
 int /*<<< orphan*/  aat2870_update ; 
 int /*<<< orphan*/  aat2870_write ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 struct aat2870_platform_data* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct aat2870_data*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 struct aat2870_data* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct aat2870_data*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct aat2870_data*) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct aat2870_platform_data *pdata = FUNC5(&client->dev);
	struct aat2870_data *aat2870;
	int i, j;
	int ret = 0;

	aat2870 = FUNC8(&client->dev, sizeof(struct aat2870_data),
				GFP_KERNEL);
	if (!aat2870)
		return -ENOMEM;

	aat2870->dev = &client->dev;
	FUNC6(aat2870->dev, aat2870);

	aat2870->client = client;
	FUNC9(client, aat2870);

	aat2870->reg_cache = aat2870_regs;

	if (pdata->en_pin < 0)
		aat2870->en_pin = -1;
	else
		aat2870->en_pin = pdata->en_pin;

	aat2870->init = pdata->init;
	aat2870->uninit = pdata->uninit;
	aat2870->read = aat2870_read;
	aat2870->write = aat2870_write;
	aat2870->update = aat2870_update;

	FUNC11(&aat2870->io_lock);

	if (aat2870->init)
		aat2870->init(aat2870);

	if (aat2870->en_pin >= 0) {
		ret = FUNC7(&client->dev, aat2870->en_pin,
					GPIOF_OUT_INIT_HIGH, "aat2870-en");
		if (ret < 0) {
			FUNC4(&client->dev,
				"Failed to request GPIO %d\n", aat2870->en_pin);
			return ret;
		}
	}

	FUNC2(aat2870);

	for (i = 0; i < pdata->num_subdevs; i++) {
		for (j = 0; j < FUNC0(aat2870_devs); j++) {
			if ((pdata->subdevs[i].id == aat2870_devs[j].id) &&
					!FUNC12(pdata->subdevs[i].name,
						aat2870_devs[j].name)) {
				aat2870_devs[j].platform_data =
					pdata->subdevs[i].platform_data;
				break;
			}
		}
	}

	ret = FUNC10(aat2870->dev, 0, aat2870_devs,
			      FUNC0(aat2870_devs), NULL, 0, NULL);
	if (ret != 0) {
		FUNC4(aat2870->dev, "Failed to add subdev: %d\n", ret);
		goto out_disable;
	}

	FUNC3(aat2870);

	return 0;

out_disable:
	FUNC1(aat2870);
	return ret;
}