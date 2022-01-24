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
struct tps65912 {int /*<<< orphan*/  regmap; int /*<<< orphan*/ * dev; int /*<<< orphan*/  irq; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct tps65912* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct tps65912*) ; 
 int FUNC6 (struct tps65912*) ; 
 int /*<<< orphan*/  tps65912_regmap_config ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			      const struct i2c_device_id *ids)
{
	struct tps65912 *tps;

	tps = FUNC3(&client->dev, sizeof(*tps), GFP_KERNEL);
	if (!tps)
		return -ENOMEM;

	FUNC5(client, tps);
	tps->dev = &client->dev;
	tps->irq = client->irq;

	tps->regmap = FUNC4(client, &tps65912_regmap_config);
	if (FUNC0(tps->regmap)) {
		FUNC2(tps->dev, "Failed to initialize register map\n");
		return FUNC1(tps->regmap);
	}

	return FUNC6(tps);
}