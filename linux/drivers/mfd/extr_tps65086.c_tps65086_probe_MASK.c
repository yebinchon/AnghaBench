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
struct tps65086 {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPS65086_DEVICEID ; 
 unsigned int TPS65086_DEVICEID_OTP_MASK ; 
 unsigned int TPS65086_DEVICEID_PART_MASK ; 
 unsigned int TPS65086_DEVICEID_REV_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int,char,unsigned int) ; 
 struct tps65086* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct tps65086*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  tps65086_cells ; 
 int /*<<< orphan*/  tps65086_irq_chip ; 
 int /*<<< orphan*/  tps65086_regmap_config ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			  const struct i2c_device_id *ids)
{
	struct tps65086 *tps;
	unsigned int version;
	int ret;

	tps = FUNC5(&client->dev, sizeof(*tps), GFP_KERNEL);
	if (!tps)
		return -ENOMEM;

	FUNC7(client, tps);
	tps->dev = &client->dev;
	tps->irq = client->irq;

	tps->regmap = FUNC6(client, &tps65086_regmap_config);
	if (FUNC1(tps->regmap)) {
		FUNC3(tps->dev, "Failed to initialize register map\n");
		return FUNC2(tps->regmap);
	}

	ret = FUNC12(tps->regmap, TPS65086_DEVICEID, &version);
	if (ret) {
		FUNC3(tps->dev, "Failed to read revision register\n");
		return ret;
	}

	FUNC4(tps->dev, "Device: TPS65086%01lX, OTP: %c, Rev: %ld\n",
		 (version & TPS65086_DEVICEID_PART_MASK),
		 (char)((version & TPS65086_DEVICEID_OTP_MASK) >> 4) + 'A',
		 (version & TPS65086_DEVICEID_REV_MASK) >> 6);

	ret = FUNC9(tps->regmap, tps->irq, IRQF_ONESHOT, 0,
				  &tps65086_irq_chip, &tps->irq_data);
	if (ret) {
		FUNC3(tps->dev, "Failed to register IRQ chip\n");
		return ret;
	}

	ret = FUNC8(tps->dev, PLATFORM_DEVID_AUTO, tps65086_cells,
			      FUNC0(tps65086_cells), NULL, 0,
			      FUNC11(tps->irq_data));
	if (ret) {
		FUNC10(tps->irq, tps->irq_data);
		return ret;
	}

	return 0;
}