#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stw481x {int /*<<< orphan*/  map; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int pdata_size; struct stw481x* platform_data; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct stw481x* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct stw481x*) ; 
 TYPE_1__* stw481x_cells ; 
 int /*<<< orphan*/  stw481x_regmap_config ; 
 int FUNC9 (struct stw481x*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct stw481x			*stw481x;
	int ret;
	int i;

	stw481x = FUNC5(&client->dev, sizeof(*stw481x), GFP_KERNEL);
	if (!stw481x)
		return -ENOMEM;

	FUNC8(client, stw481x);
	stw481x->client = client;
	stw481x->map = FUNC7(client, &stw481x_regmap_config);
	if (FUNC1(stw481x->map)) {
		ret = FUNC2(stw481x->map);
		FUNC3(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	ret = FUNC9(stw481x);
	if (ret) {
		FUNC3(&client->dev, "chip initialization failed\n");
		return ret;
	}

	/* Set up and register the platform devices. */
	for (i = 0; i < FUNC0(stw481x_cells); i++) {
		/* One state holder for all drivers, this is simple */
		stw481x_cells[i].platform_data = stw481x;
		stw481x_cells[i].pdata_size = sizeof(*stw481x);
	}

	ret = FUNC6(&client->dev, 0, stw481x_cells,
				   FUNC0(stw481x_cells), NULL, 0, NULL);
	if (ret)
		return ret;

	FUNC4(&client->dev, "initialized STw481x device\n");

	return ret;
}