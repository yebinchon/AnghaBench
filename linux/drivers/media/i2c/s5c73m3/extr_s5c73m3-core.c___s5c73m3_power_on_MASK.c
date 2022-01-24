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
struct s5c73m3 {TYPE_1__* supplies; int /*<<< orphan*/  clock; int /*<<< orphan*/  oif_sd; int /*<<< orphan*/  mclk_frequency; } ;
struct TYPE_2__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  RST ; 
 int S5C73M3_MAX_SUPPLIES ; 
 int /*<<< orphan*/  STBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s5c73m3_dbg ; 
 int /*<<< orphan*/  FUNC5 (struct s5c73m3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct s5c73m3 *state)
{
	int i, ret;

	for (i = 0; i < S5C73M3_MAX_SUPPLIES; i++) {
		ret = FUNC4(state->supplies[i].consumer);
		if (ret)
			goto err_reg_dis;
	}

	ret = FUNC2(state->clock, state->mclk_frequency);
	if (ret < 0)
		goto err_reg_dis;

	ret = FUNC1(state->clock);
	if (ret < 0)
		goto err_reg_dis;

	FUNC7(1, s5c73m3_dbg, &state->oif_sd, "clock frequency: %ld\n",
					FUNC0(state->clock));

	FUNC5(state, STBY);
	FUNC6(100, 200);

	FUNC5(state, RST);
	FUNC6(50, 100);

	return 0;

err_reg_dis:
	for (--i; i >= 0; i--)
		FUNC3(state->supplies[i].consumer);
	return ret;
}