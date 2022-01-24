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
struct s5c73m3 {int /*<<< orphan*/  clock; TYPE_1__* supplies; int /*<<< orphan*/  oif_sd; scalar_t__ isp_ready; scalar_t__ streaming; } ;
struct TYPE_2__ {int /*<<< orphan*/  supply; int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  RST ; 
 int S5C73M3_MAX_SUPPLIES ; 
 int /*<<< orphan*/  STBY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct s5c73m3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct s5c73m3 *state)
{
	int i, ret;

	if (FUNC4(state, RST))
		FUNC5(10, 50);

	if (FUNC4(state, STBY))
		FUNC5(100, 200);

	FUNC0(state->clock);

	state->streaming = 0;
	state->isp_ready = 0;

	for (i = S5C73M3_MAX_SUPPLIES - 1; i >= 0; i--) {
		ret = FUNC2(state->supplies[i].consumer);
		if (ret)
			goto err;
	}

	return 0;
err:
	for (++i; i < S5C73M3_MAX_SUPPLIES; i++) {
		int r = FUNC3(state->supplies[i].consumer);
		if (r < 0)
			FUNC6(&state->oif_sd, "Failed to re-enable %s: %d\n",
				 state->supplies[i].supply, r);
	}

	FUNC1(state->clock);
	return ret;
}