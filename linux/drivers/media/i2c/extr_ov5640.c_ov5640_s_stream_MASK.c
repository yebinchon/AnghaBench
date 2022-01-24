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
struct TYPE_2__ {scalar_t__ bus_type; } ;
struct ov5640_dev {int streaming; int pending_fmt_change; int /*<<< orphan*/  lock; TYPE_1__ ep; int /*<<< orphan*/  fmt; scalar_t__ pending_mode_change; } ;

/* Variables and functions */
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ov5640_dev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ov5640_dev*) ; 
 int FUNC4 (struct ov5640_dev*,int) ; 
 int FUNC5 (struct ov5640_dev*,int) ; 
 struct ov5640_dev* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, int enable)
{
	struct ov5640_dev *sensor = FUNC6(sd);
	int ret = 0;

	FUNC0(&sensor->lock);

	if (sensor->streaming == !enable) {
		if (enable && sensor->pending_mode_change) {
			ret = FUNC3(sensor);
			if (ret)
				goto out;
		}

		if (enable && sensor->pending_fmt_change) {
			ret = FUNC2(sensor, &sensor->fmt);
			if (ret)
				goto out;
			sensor->pending_fmt_change = false;
		}

		if (sensor->ep.bus_type == V4L2_MBUS_CSI2_DPHY)
			ret = FUNC5(sensor, enable);
		else
			ret = FUNC4(sensor, enable);

		if (!ret)
			sensor->streaming = enable;
	}
out:
	FUNC1(&sensor->lock);
	return ret;
}