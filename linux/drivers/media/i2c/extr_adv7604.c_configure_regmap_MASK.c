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
struct adv76xx_state {int /*<<< orphan*/ * i2c_clients; int /*<<< orphan*/ * regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * adv76xx_regmap_cnf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC4(struct adv76xx_state *state, int region)
{
	int err;

	if (!state->i2c_clients[region])
		return -ENODEV;

	state->regmap[region] =
		FUNC2(state->i2c_clients[region],
				     &adv76xx_regmap_cnf[region]);

	if (FUNC0(state->regmap[region])) {
		err = FUNC1(state->regmap[region]);
		FUNC3(state->i2c_clients[region],
			"Error initializing regmap %d with error %d\n",
			region, err);
		return -EINVAL;
	}

	return 0;
}