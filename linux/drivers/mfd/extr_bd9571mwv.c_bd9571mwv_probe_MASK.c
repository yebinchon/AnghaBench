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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct bd9571mwv {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bd9571mwv_cells ; 
 int FUNC3 (struct bd9571mwv*) ; 
 int /*<<< orphan*/  bd9571mwv_irq_chip ; 
 int /*<<< orphan*/  bd9571mwv_regmap_config ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct bd9571mwv* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct bd9571mwv*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			  const struct i2c_device_id *ids)
{
	struct bd9571mwv *bd;
	int ret;

	bd = FUNC5(&client->dev, sizeof(*bd), GFP_KERNEL);
	if (!bd)
		return -ENOMEM;

	FUNC7(client, bd);
	bd->dev = &client->dev;
	bd->irq = client->irq;

	bd->regmap = FUNC6(client, &bd9571mwv_regmap_config);
	if (FUNC1(bd->regmap)) {
		FUNC4(bd->dev, "Failed to initialize register map\n");
		return FUNC2(bd->regmap);
	}

	ret = FUNC3(bd);
	if (ret)
		return ret;

	ret = FUNC9(bd->regmap, bd->irq, IRQF_ONESHOT, 0,
				  &bd9571mwv_irq_chip, &bd->irq_data);
	if (ret) {
		FUNC4(bd->dev, "Failed to register IRQ chip\n");
		return ret;
	}

	ret = FUNC8(bd->dev, PLATFORM_DEVID_AUTO, bd9571mwv_cells,
			      FUNC0(bd9571mwv_cells), NULL, 0,
			      FUNC11(bd->irq_data));
	if (ret) {
		FUNC10(bd->irq, bd->irq_data);
		return ret;
	}

	return 0;
}