#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int clk32k_src; } ;
struct arizona {int clk32k_ref; int /*<<< orphan*/  clk_lock; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * mclk; int /*<<< orphan*/  dev; TYPE_1__ pdata; } ;

/* Variables and functions */
#define  ARIZONA_32KZ_MCLK1 129 
#define  ARIZONA_32KZ_MCLK2 128 
 int /*<<< orphan*/  ARIZONA_CLK_32K_ENA ; 
 int /*<<< orphan*/  ARIZONA_CLOCK_32K_1 ; 
 size_t ARIZONA_MCLK1 ; 
 size_t ARIZONA_MCLK2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct arizona *arizona)
{
	int ret = 0;

	FUNC1(&arizona->clk_lock);

	arizona->clk32k_ref++;

	if (arizona->clk32k_ref == 1) {
		switch (arizona->pdata.clk32k_src) {
		case ARIZONA_32KZ_MCLK1:
			ret = FUNC3(arizona->dev);
			if (ret != 0)
				goto err_ref;
			ret = FUNC0(arizona->mclk[ARIZONA_MCLK1]);
			if (ret != 0) {
				FUNC4(arizona->dev);
				goto err_ref;
			}
			break;
		case ARIZONA_32KZ_MCLK2:
			ret = FUNC0(arizona->mclk[ARIZONA_MCLK2]);
			if (ret != 0)
				goto err_ref;
			break;
		}

		ret = FUNC5(arizona->regmap, ARIZONA_CLOCK_32K_1,
					 ARIZONA_CLK_32K_ENA,
					 ARIZONA_CLK_32K_ENA);
	}

err_ref:
	if (ret != 0)
		arizona->clk32k_ref--;

	FUNC2(&arizona->clk_lock);

	return ret;
}