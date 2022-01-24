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
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct adv76xx_state {int /*<<< orphan*/  cec_adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct adv76xx_state* FUNC2 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	struct adv76xx_state *state = FUNC2(sd);
	struct i2c_client *client = FUNC3(sd);
	int err;

	err = FUNC1(state->cec_adap, &client->dev);
	if (err)
		FUNC0(state->cec_adap);
	return err;
}