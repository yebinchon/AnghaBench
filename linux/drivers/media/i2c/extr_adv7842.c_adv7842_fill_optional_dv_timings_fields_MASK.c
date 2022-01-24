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
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_DV_FL_CAN_DETECT_REDUCED_FPS ; 
 int /*<<< orphan*/  adv7842_check_dv_timings ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 scalar_t__ FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_dv_timings*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct v4l2_subdev *sd,
		struct v4l2_dv_timings *timings)
{
	FUNC2(timings, FUNC0(sd),
			FUNC1(sd) ? 250000 : 1000000,
			adv7842_check_dv_timings, NULL);
	timings->bt.flags |= V4L2_DV_FL_CAN_DETECT_REDUCED_FPS;
}