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
struct atmel_smc_cs_conf {int /*<<< orphan*/  mode; int /*<<< orphan*/  timings; int /*<<< orphan*/  cycle; int /*<<< orphan*/  pulse; int /*<<< orphan*/  setup; } ;
struct atmel_hsmc_reg_layout {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atmel_hsmc_reg_layout const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_hsmc_reg_layout const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_hsmc_reg_layout const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_hsmc_reg_layout const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_hsmc_reg_layout const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct regmap *regmap,
			      const struct atmel_hsmc_reg_layout *layout,
			      int cs, const struct atmel_smc_cs_conf *conf)
{
	FUNC5(regmap, FUNC3(layout, cs), conf->setup);
	FUNC5(regmap, FUNC2(layout, cs), conf->pulse);
	FUNC5(regmap, FUNC0(layout, cs), conf->cycle);
	FUNC5(regmap, FUNC4(layout, cs), conf->timings);
	FUNC5(regmap, FUNC1(layout, cs), conf->mode);
}