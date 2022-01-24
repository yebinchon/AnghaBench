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
struct tps6105x {int /*<<< orphan*/  regmap; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int TPS6105X_MODE_SHUTDOWN ; 
 int /*<<< orphan*/  TPS6105X_REG0_MODE_MASK ; 
 int TPS6105X_REG0_MODE_SHIFT ; 
 int /*<<< orphan*/  TPS6105X_REG_0 ; 
 struct tps6105x* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct tps6105x *tps6105x = FUNC0(client);

	FUNC1(&client->dev);

	/* Put chip in shutdown mode */
	FUNC2(tps6105x->regmap, TPS6105X_REG_0,
		TPS6105X_REG0_MODE_MASK,
		TPS6105X_MODE_SHUTDOWN << TPS6105X_REG0_MODE_SHIFT);

	return 0;
}