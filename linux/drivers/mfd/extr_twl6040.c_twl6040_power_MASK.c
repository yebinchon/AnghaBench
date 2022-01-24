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
struct twl6040 {scalar_t__ pll; int sysclk_rate; int /*<<< orphan*/  mutex; int /*<<< orphan*/  clk32k; scalar_t__ mclk_rate; int /*<<< orphan*/  mclk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  audpwron; scalar_t__ power_count; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ TWL6040_SYSCLK_SEL_HPPLL ; 
 scalar_t__ TWL6040_SYSCLK_SEL_LPPLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct twl6040*) ; 
 int FUNC11 (struct twl6040*) ; 
 int FUNC12 (struct twl6040*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

int FUNC14(struct twl6040 *twl6040, int on)
{
	int ret = 0;

	FUNC5(&twl6040->mutex);

	if (on) {
		/* already powered-up */
		if (twl6040->power_count++)
			goto out;

		ret = FUNC1(twl6040->clk32k);
		if (ret) {
			twl6040->power_count = 0;
			goto out;
		}

		/* Allow writes to the chip */
		FUNC7(twl6040->regmap, false);

		if (FUNC3(twl6040->audpwron)) {
			/* use automatic power-up sequence */
			ret = FUNC11(twl6040);
			if (ret) {
				FUNC0(twl6040->clk32k);
				twl6040->power_count = 0;
				goto out;
			}
		} else {
			/* use manual power-up sequence */
			ret = FUNC12(twl6040);
			if (ret) {
				FUNC0(twl6040->clk32k);
				twl6040->power_count = 0;
				goto out;
			}
		}

		/*
		 * Register access can produce errors after power-up unless we
		 * wait at least 8ms based on measurements on duovero.
		 */
		FUNC13(10000, 12000);

		/* Sync with the HW */
		ret = FUNC9(twl6040->regmap);
		if (ret) {
			FUNC2(twl6040->dev, "Failed to sync with the HW: %i\n",
				ret);
			goto out;
		}

		/* Default PLL configuration after power up */
		twl6040->pll = TWL6040_SYSCLK_SEL_LPPLL;
		twl6040->sysclk_rate = 19200000;
	} else {
		/* already powered-down */
		if (!twl6040->power_count) {
			FUNC2(twl6040->dev,
				"device is already powered-off\n");
			ret = -EPERM;
			goto out;
		}

		if (--twl6040->power_count)
			goto out;

		if (FUNC3(twl6040->audpwron)) {
			/* use AUDPWRON line */
			FUNC4(twl6040->audpwron, 0);

			/* power-down sequence latency */
			FUNC13(500, 700);
		} else {
			/* use manual power-down sequence */
			FUNC10(twl6040);
		}

		/* Set regmap to cache only and mark it as dirty */
		FUNC7(twl6040->regmap, true);
		FUNC8(twl6040->regmap);

		twl6040->sysclk_rate = 0;

		if (twl6040->pll == TWL6040_SYSCLK_SEL_HPPLL) {
			FUNC0(twl6040->mclk);
			twl6040->mclk_rate = 0;
		}

		FUNC0(twl6040->clk32k);
	}

out:
	FUNC6(&twl6040->mutex);
	return ret;
}