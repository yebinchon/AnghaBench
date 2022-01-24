#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mt9t112_priv {TYPE_2__* info; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  p7; int /*<<< orphan*/  p6; int /*<<< orphan*/  p5; int /*<<< orphan*/  p4; int /*<<< orphan*/  p3; int /*<<< orphan*/  p2; int /*<<< orphan*/  p1; int /*<<< orphan*/  n; int /*<<< orphan*/  m; } ;
struct TYPE_4__ {TYPE_1__ divider; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct i2c_client const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct i2c_client const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct i2c_client const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mt9t112_priv* FUNC5 (struct i2c_client const*) ; 

__attribute__((used)) static int FUNC6(const struct i2c_client *client)
{
	struct mt9t112_priv *priv = FUNC5(client);
	int data, i, ret;

	FUNC1(ret, client, 0x0014, 0x003, 0x0001);

	/* PLL control: BYPASS PLL = 8517. */
	FUNC3(ret, client, 0x0014, 0x2145);

	/* Replace these registers when new timing parameters are generated. */
	FUNC4(client,
				 priv->info->divider.m, priv->info->divider.n,
				 priv->info->divider.p1, priv->info->divider.p2,
				 priv->info->divider.p3, priv->info->divider.p4,
				 priv->info->divider.p5, priv->info->divider.p6,
				 priv->info->divider.p7);

	/*
	 * TEST_BYPASS  on
	 * PLL_ENABLE   on
	 * SEL_LOCK_DET on
	 * TEST_BYPASS  off
	 */
	FUNC3(ret, client, 0x0014, 0x2525);
	FUNC3(ret, client, 0x0014, 0x2527);
	FUNC3(ret, client, 0x0014, 0x3427);
	FUNC3(ret, client, 0x0014, 0x3027);

	FUNC0(10);

	/*
	 * PLL_BYPASS off
	 * Reference clock count
	 * I2C Master Clock Divider
	 */
	FUNC3(ret, client, 0x0014, 0x3046);
	/* JPEG initialization workaround */
	FUNC3(ret, client, 0x0016, 0x0400);
	FUNC3(ret, client, 0x0022, 0x0190);
	FUNC3(ret, client, 0x3B84, 0x0212);

	/* External sensor clock is PLL bypass. */
	FUNC3(ret, client, 0x002E, 0x0500);

	FUNC1(ret, client, 0x0018, 0x0002, 0x0002);
	FUNC1(ret, client, 0x3B82, 0x0004, 0x0004);

	/* MCU disabled. */
	FUNC1(ret, client, 0x0018, 0x0004, 0x0004);

	/* Out of standby. */
	FUNC1(ret, client, 0x0018, 0x0001, 0);

	FUNC0(50);

	/*
	 * Standby Workaround
	 * Disable Secondary I2C Pads
	 */
	FUNC3(ret, client, 0x0614, 0x0001);
	FUNC0(1);
	FUNC3(ret, client, 0x0614, 0x0001);
	FUNC0(1);
	FUNC3(ret, client, 0x0614, 0x0001);
	FUNC0(1);
	FUNC3(ret, client, 0x0614, 0x0001);
	FUNC0(1);
	FUNC3(ret, client, 0x0614, 0x0001);
	FUNC0(1);
	FUNC3(ret, client, 0x0614, 0x0001);
	FUNC0(1);

	/* Poll to verify out of standby. Must Poll this bit. */
	for (i = 0; i < 100; i++) {
		FUNC2(data, client, 0x0018);
		if (!(data & 0x4000))
			break;

		FUNC0(10);
	}

	return ret;
}