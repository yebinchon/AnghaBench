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
struct v4l2_input {scalar_t__ index; int /*<<< orphan*/  name; int /*<<< orphan*/  std; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  type; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int /*<<< orphan*/  tvnorms; } ;
struct rvin_dev {TYPE_1__ vdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  V4L2_INPUT_TYPE_CAMERA ; 
 int /*<<< orphan*/  V4L2_IN_CAP_DV_TIMINGS ; 
 int /*<<< orphan*/  V4L2_IN_CAP_STD ; 
 int /*<<< orphan*/  dv_timings_cap ; 
 int /*<<< orphan*/  g_input_status ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 
 struct rvin_dev* FUNC3 (struct file*) ; 
 struct v4l2_subdev* FUNC4 (struct rvin_dev*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
			   struct v4l2_input *i)
{
	struct rvin_dev *vin = FUNC3(file);
	struct v4l2_subdev *sd = FUNC4(vin);
	int ret;

	if (i->index != 0)
		return -EINVAL;

	ret = FUNC1(sd, video, g_input_status, &i->status);
	if (ret < 0 && ret != -ENOIOCTLCMD && ret != -ENODEV)
		return ret;

	i->type = V4L2_INPUT_TYPE_CAMERA;

	if (FUNC2(sd, pad, dv_timings_cap)) {
		i->capabilities = V4L2_IN_CAP_DV_TIMINGS;
		i->std = 0;
	} else {
		i->capabilities = V4L2_IN_CAP_STD;
		i->std = vin->vdev.tvnorms;
	}

	FUNC0(i->name, "Camera", sizeof(i->name));

	return 0;
}