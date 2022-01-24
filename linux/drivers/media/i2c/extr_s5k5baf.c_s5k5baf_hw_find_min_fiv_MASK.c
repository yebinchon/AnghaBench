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
struct s5k5baf {int error; int fiv; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
#define  CFG_ERROR_RANGE 128 
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  REG_G_ACTUAL_P_FR_TIME ; 
 int FUNC0 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC1 (struct s5k5baf*,int) ; 
 int FUNC2 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC5(struct s5k5baf *state)
{
	u16 err, fiv;
	int n;

	fiv = FUNC2(state,  REG_G_ACTUAL_P_FR_TIME);
	if (state->error)
		return;

	for (n = 5; n > 0; --n) {
		FUNC1(state, fiv);
		err = FUNC0(state);
		if (state->error)
			return;
		switch (err) {
		case CFG_ERROR_RANGE:
			++fiv;
			break;
		case 0:
			state->fiv = fiv;
			FUNC4(&state->sd,
				  "found valid frame interval: %d00us\n", fiv);
			return;
		default:
			FUNC3(&state->sd,
				 "error setting frame interval: %d\n", err);
			state->error = -EINVAL;
		}
	}
	FUNC3(&state->sd, "cannot find correct frame interval\n");
	state->error = -ERANGE;
}