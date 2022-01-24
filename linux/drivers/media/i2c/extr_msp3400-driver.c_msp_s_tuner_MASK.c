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
struct v4l2_tuner {scalar_t__ audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct msp_state {scalar_t__ audmode; scalar_t__ radio; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 struct msp_state* FUNC1 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, const struct v4l2_tuner *vt)
{
	struct msp_state *state = FUNC1(sd);
	struct i2c_client *client = FUNC2(sd);

	if (state->radio)  /* TODO: add mono/stereo support for radio */
		return 0;
	if (state->audmode == vt->audmode)
		return 0;
	state->audmode = vt->audmode;
	/* only set audmode */
	FUNC0(client);
	return 0;
}