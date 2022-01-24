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
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; scalar_t__ addr; int /*<<< orphan*/  adapter; } ;
struct ab3100_platform_data {int dummy; } ;
struct ab3100 {int chip_id; int /*<<< orphan*/  testreg_client; int /*<<< orphan*/ * chip_name; struct i2c_client* i2c_client; int /*<<< orphan*/ * dev; int /*<<< orphan*/  event_subscribers; int /*<<< orphan*/  access_mutex; } ;
struct TYPE_6__ {int id; char* name; } ;
struct TYPE_5__ {int pdata_size; struct ab3100_platform_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB3100_CID ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ab3100_devs ; 
 int FUNC4 (struct ab3100*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  ab3100_irq_handler ; 
 int /*<<< orphan*/  ab3100_ops ; 
 int FUNC5 (struct ab3100*) ; 
 int /*<<< orphan*/  FUNC6 (struct ab3100*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 struct ab3100_platform_data* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 struct ab3100* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ab3100*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,struct ab3100*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ids ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,char*,char*) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client,
				  const struct i2c_device_id *id)
{
	struct ab3100 *ab3100;
	struct ab3100_platform_data *ab3100_plf_data =
		FUNC9(&client->dev);
	int err;
	int i;

	ab3100 = FUNC11(&client->dev, sizeof(struct ab3100), GFP_KERNEL);
	if (!ab3100)
		return -ENOMEM;

	/* Initialize data structure */
	FUNC17(&ab3100->access_mutex);
	FUNC1(&ab3100->event_subscribers);

	ab3100->i2c_client = client;
	ab3100->dev = &ab3100->i2c_client->dev;

	FUNC14(client, ab3100);

	/* Read chip ID register */
	err = FUNC4(ab3100, AB3100_CID,
						&ab3100->chip_id);
	if (err) {
		FUNC8(&client->dev,
			"failed to communicate with AB3100 chip\n");
		goto exit_no_detect;
	}

	for (i = 0; ids[i].id != 0x0; i++) {
		if (ids[i].id == ab3100->chip_id) {
			if (ids[i].name)
				break;

			FUNC8(&client->dev, "AB3000 is not supported\n");
			goto exit_no_detect;
		}
	}

	FUNC18(&ab3100->chip_name[0],
		 sizeof(ab3100->chip_name) - 1, "AB3100 %s", ids[i].name);

	if (ids[i].id == 0x0) {
		FUNC8(&client->dev, "unknown analog baseband chip id: 0x%x\n",
			ab3100->chip_id);
		FUNC8(&client->dev,
			"accepting it anyway. Please update the driver.\n");
		goto exit_no_detect;
	}

	FUNC10(&client->dev, "Detected chip: %s\n",
		 &ab3100->chip_name[0]);

	/* Attach a second dummy i2c_client to the test register address */
	ab3100->testreg_client = FUNC13(client->adapter,
					       client->addr + 1);
	if (FUNC2(ab3100->testreg_client)) {
		err = FUNC3(ab3100->testreg_client);
		goto exit_no_testreg_client;
	}

	err = FUNC5(ab3100);
	if (err)
		goto exit_no_setup;

	err = FUNC12(&client->dev,
					client->irq, NULL, ab3100_irq_handler,
					IRQF_ONESHOT, "ab3100-core", ab3100);
	if (err)
		goto exit_no_irq;

	err = FUNC7(&client->dev, &ab3100_ops);
	if (err)
		goto exit_no_ops;

	/* Set up and register the platform devices. */
	for (i = 0; i < FUNC0(ab3100_devs); i++) {
		ab3100_devs[i].platform_data = ab3100_plf_data;
		ab3100_devs[i].pdata_size = sizeof(struct ab3100_platform_data);
	}

	err = FUNC16(&client->dev, 0, ab3100_devs,
			      FUNC0(ab3100_devs), NULL, 0, NULL);

	FUNC6(ab3100);

	return 0;

 exit_no_ops:
 exit_no_irq:
 exit_no_setup:
	FUNC15(ab3100->testreg_client);
 exit_no_testreg_client:
 exit_no_detect:
	return err;
}