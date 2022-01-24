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
struct arizona {scalar_t__ clk32k_ref; int /*<<< orphan*/  clk_lock; int /*<<< orphan*/ * mclk; int /*<<< orphan*/  dev; TYPE_1__ pdata; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
#define  ARIZONA_32KZ_MCLK1 129 
#define  ARIZONA_32KZ_MCLK2 128 
 int /*<<< orphan*/  ARIZONA_CLK_32K_ENA ; 
 int /*<<< orphan*/  ARIZONA_CLOCK_32K_1 ; 
 size_t ARIZONA_MCLK1 ; 
 size_t ARIZONA_MCLK2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct arizona *arizona)
{
	FUNC2(&arizona->clk_lock);

	FUNC0(arizona->clk32k_ref <= 0);

	arizona->clk32k_ref--;

	if (arizona->clk32k_ref == 0) {
		FUNC5(arizona->regmap, ARIZONA_CLOCK_32K_1,
				   ARIZONA_CLK_32K_ENA, 0);

		switch (arizona->pdata.clk32k_src) {
		case ARIZONA_32KZ_MCLK1:
			FUNC4(arizona->dev);
			FUNC1(arizona->mclk[ARIZONA_MCLK1]);
			break;
		case ARIZONA_32KZ_MCLK2:
			FUNC1(arizona->mclk[ARIZONA_MCLK2]);
			break;
		}
	}

	FUNC3(&arizona->clk_lock);

	return 0;
}