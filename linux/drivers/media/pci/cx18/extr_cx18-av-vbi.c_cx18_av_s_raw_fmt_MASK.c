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
struct v4l2_vbi_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct cx18_av_state {int slicer_line_delay; } ;
struct cx18 {struct cx18_av_state av_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx18*,int,int) ; 
 struct cx18* FUNC2 (struct v4l2_subdev*) ; 

int FUNC3(struct v4l2_subdev *sd, struct v4l2_vbi_format *fmt)
{
	struct cx18 *cx = FUNC2(sd);
	struct cx18_av_state *state = &cx->av_state;

	/* Setup standard */
	FUNC0(cx);

	/* VBI Offset */
	FUNC1(cx, 0x47f, state->slicer_line_delay);
	FUNC1(cx, 0x404, 0x2e);
	return 0;
}