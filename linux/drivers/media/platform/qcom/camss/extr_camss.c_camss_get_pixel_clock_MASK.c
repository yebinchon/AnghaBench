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
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; } ;
struct v4l2_ctrl {int dummy; } ;
struct media_entity {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  V4L2_CID_PIXEL_RATE ; 
 struct media_entity* FUNC0 (struct media_entity*) ; 
 struct v4l2_subdev* FUNC1 (struct media_entity*) ; 
 struct v4l2_ctrl* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl*) ; 

int FUNC4(struct media_entity *entity, u32 *pixel_clock)
{
	struct media_entity *sensor;
	struct v4l2_subdev *subdev;
	struct v4l2_ctrl *ctrl;

	sensor = FUNC0(entity);
	if (!sensor)
		return -ENODEV;

	subdev = FUNC1(sensor);

	ctrl = FUNC2(subdev->ctrl_handler, V4L2_CID_PIXEL_RATE);

	if (!ctrl)
		return -EINVAL;

	*pixel_clock = FUNC3(ctrl);

	return 0;
}