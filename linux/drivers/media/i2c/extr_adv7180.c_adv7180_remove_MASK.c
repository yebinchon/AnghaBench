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
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct adv7180_state {scalar_t__ irq; int /*<<< orphan*/  mutex; int /*<<< orphan*/  csi_client; int /*<<< orphan*/  vpp_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adv7180_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct adv7180_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct adv7180_state*) ; 
 struct v4l2_subdev* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct adv7180_state* FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct v4l2_subdev *sd = FUNC3(client);
	struct adv7180_state *state = FUNC7(sd);

	FUNC8(sd);

	if (state->irq > 0)
		FUNC2(client->irq, state);

	FUNC5(&sd->entity);
	FUNC0(state);

	FUNC4(state->vpp_client);
	FUNC4(state->csi_client);

	FUNC1(state, false);

	FUNC6(&state->mutex);

	return 0;
}