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
struct stmfx {int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  lock; int /*<<< orphan*/  map; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct stmfx* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct stmfx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stmfx_cells ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*) ; 
 int FUNC10 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*) ; 
 int FUNC12 (struct i2c_client*) ; 
 int /*<<< orphan*/  stmfx_regmap_config ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct stmfx *stmfx;
	int ret;

	stmfx = FUNC4(dev, sizeof(*stmfx), GFP_KERNEL);
	if (!stmfx)
		return -ENOMEM;

	FUNC7(client, stmfx);

	stmfx->dev = dev;

	stmfx->map = FUNC6(client, &stmfx_regmap_config);
	if (FUNC1(stmfx->map)) {
		ret = FUNC2(stmfx->map);
		FUNC3(dev, "Failed to allocate register map: %d\n", ret);
		return ret;
	}

	FUNC8(&stmfx->lock);

	ret = FUNC10(client);
	if (ret) {
		if (ret == -ETIMEDOUT)
			return -EPROBE_DEFER;
		return ret;
	}

	if (client->irq < 0) {
		FUNC3(dev, "Failed to get IRQ: %d\n", client->irq);
		ret = client->irq;
		goto err_chip_exit;
	}

	ret = FUNC12(client);
	if (ret)
		goto err_chip_exit;

	ret = FUNC5(dev, PLATFORM_DEVID_NONE,
				   stmfx_cells, FUNC0(stmfx_cells), NULL,
				   0, stmfx->irq_domain);
	if (ret)
		goto err_irq_exit;

	return 0;

err_irq_exit:
	FUNC11(client);
err_chip_exit:
	FUNC9(client);

	return ret;
}