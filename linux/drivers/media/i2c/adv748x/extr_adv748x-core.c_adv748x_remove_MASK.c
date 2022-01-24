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
struct i2c_client {int dummy; } ;
struct adv748x_state {int /*<<< orphan*/  mutex; int /*<<< orphan*/  txb; int /*<<< orphan*/  txa; int /*<<< orphan*/  hdmi; int /*<<< orphan*/  afe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adv748x_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct adv748x_state*) ; 
 struct adv748x_state* FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct adv748x_state *state = FUNC5(client);

	FUNC0(&state->afe);
	FUNC3(&state->hdmi);

	FUNC1(&state->txa);
	FUNC1(&state->txb);

	FUNC4(state);
	FUNC2(state);
	FUNC6(&state->mutex);

	return 0;
}