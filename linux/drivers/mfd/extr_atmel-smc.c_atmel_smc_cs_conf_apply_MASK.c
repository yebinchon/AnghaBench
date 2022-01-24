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
struct atmel_smc_cs_conf {int /*<<< orphan*/  mode; int /*<<< orphan*/  cycle; int /*<<< orphan*/  pulse; int /*<<< orphan*/  setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct regmap *regmap, int cs,
			     const struct atmel_smc_cs_conf *conf)
{
	FUNC4(regmap, FUNC3(cs), conf->setup);
	FUNC4(regmap, FUNC2(cs), conf->pulse);
	FUNC4(regmap, FUNC0(cs), conf->cycle);
	FUNC4(regmap, FUNC1(cs), conf->mode);
}