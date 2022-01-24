#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int numerator; unsigned int denominator; } ;
struct TYPE_5__ {int readbuffers; TYPE_1__ timeperframe; int /*<<< orphan*/  capability; } ;
struct TYPE_6__ {TYPE_2__ capture; } ;
struct v4l2_streamparm {TYPE_3__ parm; } ;
struct file {int dummy; } ;
struct aspeed_video {unsigned int frame_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int MAX_FRAME_RATE ; 
 int /*<<< orphan*/  V4L2_CAP_TIMEPERFRAME ; 
 int /*<<< orphan*/  VE_CTRL ; 
 int /*<<< orphan*/  VE_CTRL_FRC ; 
 int /*<<< orphan*/  FUNC1 (struct aspeed_video*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aspeed_video* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
				 struct v4l2_streamparm *a)
{
	unsigned int frame_rate = 0;
	struct aspeed_video *video = FUNC2(file);

	a->parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
	a->parm.capture.readbuffers = 3;

	if (a->parm.capture.timeperframe.numerator)
		frame_rate = a->parm.capture.timeperframe.denominator /
			a->parm.capture.timeperframe.numerator;

	if (!frame_rate || frame_rate > MAX_FRAME_RATE) {
		frame_rate = 0;
		a->parm.capture.timeperframe.denominator = MAX_FRAME_RATE;
		a->parm.capture.timeperframe.numerator = 1;
	}

	if (video->frame_rate != frame_rate) {
		video->frame_rate = frame_rate;
		FUNC1(video, VE_CTRL, VE_CTRL_FRC,
				    FUNC0(VE_CTRL_FRC, frame_rate));
	}

	return 0;
}