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
struct TYPE_2__ {int /*<<< orphan*/  handler; } ;
struct ov5640_dev {int power_count; TYPE_1__ ctrls; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ov5640_dev*,int) ; 
 struct ov5640_dev* FUNC4 (struct v4l2_subdev*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int on)
{
	struct ov5640_dev *sensor = FUNC4(sd);
	int ret = 0;

	FUNC1(&sensor->lock);

	/*
	 * If the power count is modified from 0 to != 0 or from != 0 to 0,
	 * update the power state.
	 */
	if (sensor->power_count == !on) {
		ret = FUNC3(sensor, !!on);
		if (ret)
			goto out;
	}

	/* Update the power count. */
	sensor->power_count += on ? 1 : -1;
	FUNC0(sensor->power_count < 0);
out:
	FUNC2(&sensor->lock);

	if (on && !ret && sensor->power_count == 1) {
		/* restore controls */
		ret = FUNC5(&sensor->ctrls.handler);
	}

	return ret;
}