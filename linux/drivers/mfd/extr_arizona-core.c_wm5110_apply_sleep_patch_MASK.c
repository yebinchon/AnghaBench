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
struct arizona_sysclk_state {int dummy; } ;
struct arizona {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct arizona*,struct arizona_sysclk_state*) ; 
 int FUNC2 (struct arizona*,struct arizona_sysclk_state*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm5110_sleep_patch ; 

__attribute__((used)) static int FUNC4(struct arizona *arizona)
{
	struct arizona_sysclk_state state;
	int err, ret;

	ret = FUNC2(arizona, &state);
	if (ret)
		return ret;

	ret = FUNC3(arizona->regmap,
					      wm5110_sleep_patch,
					      FUNC0(wm5110_sleep_patch));

	err = FUNC1(arizona, &state);

	return ret ?: err;
}