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
typedef  int u16 ;
struct s5k5baf {int apply_cfg; scalar_t__ error; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
#define  CFG_ERROR_RANGE 128 
 scalar_t__ EINVAL ; 
 int FUNC0 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC1 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC3(struct s5k5baf *state)
{
	u16 err;

	err = FUNC0(state);
	if (state->error)
		return;

	switch (err) {
	case 0:
		state->apply_cfg = 1;
		return;
	case CFG_ERROR_RANGE:
		FUNC1(state);
		if (!state->error)
			state->apply_cfg = 1;
		return;
	default:
		FUNC2(&state->sd,
			 "error setting format: %d\n", err);
		state->error = -EINVAL;
	}
}