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
struct tw2804 {int norm; char* channel; char* input; } ;

/* Variables and functions */
 int V4L2_STD_525_60 ; 
 struct tw2804* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,char*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd)
{
	struct tw2804 *state = FUNC0(sd);

	FUNC2(sd, "Standard: %s\n",
			state->norm & V4L2_STD_525_60 ? "60 Hz" : "50 Hz");
	FUNC2(sd, "Channel: %d\n", state->channel);
	FUNC2(sd, "Input: %d\n", state->input);
	return FUNC1(sd);
}