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
struct s5k5baf {int /*<<< orphan*/  sd; int /*<<< orphan*/  supplies; int /*<<< orphan*/  clock; scalar_t__ apply_crop; scalar_t__ apply_cfg; scalar_t__ streaming; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RST ; 
 int /*<<< orphan*/  S5K5BAF_NUM_SUPPLIES ; 
 int /*<<< orphan*/  STBY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(struct s5k5baf *state)
{
	int ret;

	state->streaming = 0;
	state->apply_cfg = 0;
	state->apply_crop = 0;

	FUNC3(state, RST);
	FUNC3(state, STBY);

	if (!FUNC0(state->clock))
		FUNC1(state->clock);

	ret = FUNC2(S5K5BAF_NUM_SUPPLIES,
					state->supplies);
	if (ret < 0)
		FUNC4(&state->sd, "failed to disable regulators\n");

	return 0;
}