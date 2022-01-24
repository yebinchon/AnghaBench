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
struct msp_state {int restart; int /*<<< orphan*/  hdl; scalar_t__ kthread; int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 struct msp_state* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct msp_state *state = FUNC3(FUNC0(client));

	FUNC5(&state->sd);
	/* shutdown control thread */
	if (state->kthread) {
		state->restart = 1;
		FUNC1(state->kthread);
	}
	FUNC2(client);

	FUNC4(&state->hdl);
	return 0;
}