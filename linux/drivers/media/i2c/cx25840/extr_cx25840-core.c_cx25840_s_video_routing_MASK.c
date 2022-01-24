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
typedef  scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int /*<<< orphan*/  aud_input; scalar_t__ generic_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx25840_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 scalar_t__ FUNC3 (struct cx25840_state*) ; 
 scalar_t__ FUNC4 (struct cx25840_state*) ; 
 int FUNC5 (struct i2c_client*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct cx25840_state* FUNC6 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC7 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd,
				   u32 input, u32 output, u32 config)
{
	struct cx25840_state *state = FUNC6(sd);
	struct i2c_client *client = FUNC7(sd);

	if (FUNC3(state))
		FUNC0(client);

	if (FUNC4(state) && state->generic_mode && config) {
		FUNC1(state, config);
		FUNC2(client);
	}

	return FUNC5(client, input, state->aud_input);
}