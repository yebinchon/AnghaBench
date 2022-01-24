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
struct regmap {int dummy; } ;
struct mt9v032 {int /*<<< orphan*/  clk; scalar_t__ reset_gpio; int /*<<< orphan*/  sysclk; struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9V032_CHIP_CONTROL ; 
 int MT9V032_CHIP_CONTROL_MASTER_MODE ; 
 int /*<<< orphan*/  MT9V032_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int FUNC4 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct mt9v032 *mt9v032)
{
	struct regmap *map = mt9v032->regmap;
	int ret;

	FUNC3(mt9v032->reset_gpio, 1);

	ret = FUNC2(mt9v032->clk, mt9v032->sysclk);
	if (ret < 0)
		return ret;

	/* System clock has to be enabled before releasing the reset */
	ret = FUNC1(mt9v032->clk);
	if (ret)
		return ret;

	FUNC5(1);

	if (mt9v032->reset_gpio) {
		FUNC3(mt9v032->reset_gpio, 0);

		/* After releasing reset we need to wait 10 clock cycles
		 * before accessing the sensor over I2C. As the minimum SYSCLK
		 * frequency is 13MHz, waiting 1µs will be enough in the worst
		 * case.
		 */
		FUNC5(1);
	}

	/* Reset the chip and stop data read out */
	ret = FUNC4(map, MT9V032_RESET, 1);
	if (ret < 0)
		goto err;

	ret = FUNC4(map, MT9V032_RESET, 0);
	if (ret < 0)
		goto err;

	ret = FUNC4(map, MT9V032_CHIP_CONTROL,
			   MT9V032_CHIP_CONTROL_MASTER_MODE);
	if (ret < 0)
		goto err;

	return 0;

err:
	FUNC0(mt9v032->clk);
	return ret;
}