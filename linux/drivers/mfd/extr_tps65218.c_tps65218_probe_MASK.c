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
struct tps65218 {unsigned int rev; int /*<<< orphan*/  irq_data; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  irq; int /*<<< orphan*/  tps_lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int TPS65218_CHIPID_REV_MASK ; 
 int /*<<< orphan*/  TPS65218_REG_CHIPID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct tps65218* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct tps65218*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  tps65218_cells ; 
 int /*<<< orphan*/  tps65218_irq_chip ; 
 int /*<<< orphan*/  tps65218_regmap_config ; 
 int FUNC12 (struct tps65218*) ; 
 int FUNC13 (struct tps65218*) ; 
 int FUNC14 (struct tps65218*) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
				const struct i2c_device_id *ids)
{
	struct tps65218 *tps;
	int ret;
	unsigned int chipid;

	tps = FUNC4(&client->dev, sizeof(*tps), GFP_KERNEL);
	if (!tps)
		return -ENOMEM;

	FUNC7(client, tps);
	tps->dev = &client->dev;
	tps->irq = client->irq;
	tps->regmap = FUNC6(client, &tps65218_regmap_config);
	if (FUNC1(tps->regmap)) {
		ret = FUNC2(tps->regmap);
		FUNC3(tps->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	FUNC9(&tps->tps_lock);

	ret = FUNC5(&client->dev, tps->regmap, tps->irq,
				       IRQF_ONESHOT, 0, &tps65218_irq_chip,
				       &tps->irq_data);
	if (ret < 0)
		return ret;

	ret = FUNC11(tps->regmap, TPS65218_REG_CHIPID, &chipid);
	if (ret) {
		FUNC3(tps->dev, "Failed to read chipid: %d\n", ret);
		return ret;
	}

	tps->rev = chipid & TPS65218_CHIPID_REV_MASK;

	ret = FUNC12(tps);
	if (ret)
		return ret;

	ret = FUNC14(tps);
	if (ret)
		return ret;

	ret = FUNC13(tps);
	if (ret)
		return ret;

	ret = FUNC8(tps->dev, PLATFORM_DEVID_AUTO, tps65218_cells,
			      FUNC0(tps65218_cells), NULL, 0,
			      FUNC10(tps->irq_data));

	return ret;
}