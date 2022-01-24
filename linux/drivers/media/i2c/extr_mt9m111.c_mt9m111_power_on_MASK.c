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
struct mt9m111 {int /*<<< orphan*/  clk; int /*<<< orphan*/  regulator; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct mt9m111*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mt9m111 *mt9m111)
{
	struct i2c_client *client = FUNC6(&mt9m111->subdev);
	int ret;

	ret = FUNC5(mt9m111->clk);
	if (ret < 0)
		return ret;

	ret = FUNC3(mt9m111->regulator);
	if (ret < 0)
		goto out_clk_disable;

	ret = FUNC1(mt9m111);
	if (ret < 0)
		goto out_regulator_disable;

	return 0;

out_regulator_disable:
	FUNC2(mt9m111->regulator);

out_clk_disable:
	FUNC4(mt9m111->clk);

	FUNC0(&client->dev, "Failed to resume the sensor: %d\n", ret);

	return ret;
}