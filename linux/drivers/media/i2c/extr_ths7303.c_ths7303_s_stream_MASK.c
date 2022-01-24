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
struct ths7303_state {int stream_on; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_subdev*) ; 
 struct ths7303_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, int enable)
{
	struct ths7303_state *state = FUNC1(sd);

	state->stream_on = enable;

	return FUNC0(sd);
}