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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {scalar_t__ aud_input; } ;

/* Variables and functions */
 scalar_t__ CX25840_AUDIO_SERIAL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx25840_state*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct cx25840_state* FUNC4 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

int FUNC6(struct v4l2_subdev *sd, u32 freq)
{
	struct i2c_client *client = FUNC5(sd);
	struct cx25840_state *state = FUNC4(sd);
	int retval;

	if (!FUNC2(state))
		FUNC0(client, 0x810, ~0x1, 1);
	if (state->aud_input != CX25840_AUDIO_SERIAL) {
		FUNC0(client, 0x803, ~0x10, 0);
		FUNC1(client, 0x8d3, 0x1f);
	}
	retval = FUNC3(client, freq);
	if (state->aud_input != CX25840_AUDIO_SERIAL)
		FUNC0(client, 0x803, ~0x10, 0x10);
	if (!FUNC2(state))
		FUNC0(client, 0x810, ~0x1, 0);
	return retval;
}