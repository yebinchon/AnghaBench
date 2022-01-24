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
struct adv7343_state {scalar_t__ output; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_subdev*,scalar_t__) ; 
 struct adv7343_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
		u32 input, u32 output, u32 config)
{
	struct adv7343_state *state = FUNC1(sd);
	int err = 0;

	if (state->output == output)
		return 0;

	err = FUNC0(sd, output);
	if (!err)
		state->output = output;

	return err;
}