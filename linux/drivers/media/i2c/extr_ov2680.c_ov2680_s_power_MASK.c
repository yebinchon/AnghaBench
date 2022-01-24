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
struct ov2680_dev {TYPE_1__ ctrls; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ov2680_dev*) ; 
 int FUNC3 (struct ov2680_dev*) ; 
 int FUNC4 (struct ov2680_dev*) ; 
 struct ov2680_dev* FUNC5 (struct v4l2_subdev*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, int on)
{
	struct ov2680_dev *sensor = FUNC5(sd);
	int ret = 0;

	FUNC0(&sensor->lock);

	if (on)
		ret = FUNC4(sensor);
	else
		ret = FUNC3(sensor);

	FUNC1(&sensor->lock);

	if (on && ret == 0) {
		ret = FUNC6(&sensor->ctrls.handler);
		if (ret < 0)
			return ret;

		ret = FUNC2(sensor);
	}

	return ret;
}