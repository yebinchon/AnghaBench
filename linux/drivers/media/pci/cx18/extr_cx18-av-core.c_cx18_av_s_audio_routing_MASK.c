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
struct cx18_av_state {int /*<<< orphan*/  vid_input; } ;
struct cx18 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cx18*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cx18_av_state* FUNC1 (struct v4l2_subdev*) ; 
 struct cx18* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
				   u32 input, u32 output, u32 config)
{
	struct cx18_av_state *state = FUNC1(sd);
	struct cx18 *cx = FUNC2(sd);
	return FUNC0(cx, state->vid_input, input);
}