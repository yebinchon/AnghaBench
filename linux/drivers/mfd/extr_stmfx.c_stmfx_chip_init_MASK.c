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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct stmfx {int /*<<< orphan*/ * vdd; int /*<<< orphan*/  map; } ;
struct i2c_client {int addr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STMFX_REG_CHIP_ID ; 
 int /*<<< orphan*/  STMFX_REG_CHIP_ID_MASK ; 
 int /*<<< orphan*/  STMFX_REG_FW_VERSION_MSB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct stmfx* FUNC6 (struct i2c_client*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct stmfx*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client)
{
	struct stmfx *stmfx = FUNC6(client);
	u32 id;
	u8 version[2];
	int ret;

	stmfx->vdd = FUNC5(&client->dev, "vdd");
	ret = FUNC2(stmfx->vdd);
	if (ret == -ENODEV) {
		stmfx->vdd = NULL;
	} else if (ret == -EPROBE_DEFER) {
		return ret;
	} else if (ret) {
		FUNC3(&client->dev, "Failed to get VDD regulator: %d\n", ret);
		return ret;
	}

	if (stmfx->vdd) {
		ret = FUNC10(stmfx->vdd);
		if (ret) {
			FUNC3(&client->dev, "VDD enable failed: %d\n", ret);
			return ret;
		}
	}

	ret = FUNC8(stmfx->map, STMFX_REG_CHIP_ID, &id);
	if (ret) {
		FUNC3(&client->dev, "Error reading chip ID: %d\n", ret);
		goto err;
	}

	/*
	 * Check that ID is the complement of the I2C address:
	 * STMFX I2C address follows the 7-bit format (MSB), that's why
	 * client->addr is shifted.
	 *
	 * STMFX_I2C_ADDR|       STMFX         |        Linux
	 *   input pin   | I2C device address  | I2C device address
	 *---------------------------------------------------------
	 *       0       | b: 1000 010x h:0x84 |       0x42
	 *       1       | b: 1000 011x h:0x86 |       0x43
	 */
	if (FUNC1(STMFX_REG_CHIP_ID_MASK, ~id) != (client->addr << 1)) {
		FUNC3(&client->dev, "Unknown chip ID: %#x\n", id);
		ret = -EINVAL;
		goto err;
	}

	ret = FUNC7(stmfx->map, STMFX_REG_FW_VERSION_MSB,
			       version, FUNC0(version));
	if (ret) {
		FUNC3(&client->dev, "Error reading FW version: %d\n", ret);
		goto err;
	}

	FUNC4(&client->dev, "STMFX id: %#x, fw version: %x.%02x\n",
		 id, version[0], version[1]);

	ret = FUNC11(stmfx);
	if (ret) {
		FUNC3(&client->dev, "Failed to reset chip: %d\n", ret);
		goto err;
	}

	return 0;

err:
	if (stmfx->vdd)
		return FUNC9(stmfx->vdd);

	return ret;
}