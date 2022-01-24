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
struct v4l2_subdev_frame_interval {int /*<<< orphan*/  interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7670_info {TYPE_1__* devtype; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_framerate ) (struct v4l2_subdev*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 struct ov7670_info* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
				   struct v4l2_subdev_frame_interval *ival)
{
	struct ov7670_info *info = FUNC1(sd);


	info->devtype->get_framerate(sd, &ival->interval);

	return 0;
}