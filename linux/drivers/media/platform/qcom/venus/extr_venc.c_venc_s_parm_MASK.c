#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct v4l2_fract {int denominator; int numerator; } ;
struct venus_inst {int fps; struct v4l2_fract timeperframe; } ;
struct v4l2_outputparm {int /*<<< orphan*/  capability; int /*<<< orphan*/  reserved; struct v4l2_fract timeperframe; } ;
struct TYPE_2__ {struct v4l2_outputparm output; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_1__ parm; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ USEC_PER_SEC ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  V4L2_CAP_TIMEPERFRAME ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct venus_inst* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, struct v4l2_streamparm *a)
{
	struct venus_inst *inst = FUNC2(file);
	struct v4l2_outputparm *out = &a->parm.output;
	struct v4l2_fract *timeperframe = &out->timeperframe;
	u64 us_per_frame, fps;

	if (a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE &&
	    a->type != V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
		return -EINVAL;

	FUNC1(out->reserved, 0, sizeof(out->reserved));

	if (!timeperframe->denominator)
		timeperframe->denominator = inst->timeperframe.denominator;
	if (!timeperframe->numerator)
		timeperframe->numerator = inst->timeperframe.numerator;

	out->capability = V4L2_CAP_TIMEPERFRAME;

	us_per_frame = timeperframe->numerator * (u64)USEC_PER_SEC;
	FUNC0(us_per_frame, timeperframe->denominator);

	if (!us_per_frame)
		return -EINVAL;

	fps = (u64)USEC_PER_SEC;
	FUNC0(fps, us_per_frame);

	inst->timeperframe = *timeperframe;
	inst->fps = fps;

	return 0;
}