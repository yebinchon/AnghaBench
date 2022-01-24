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
struct TYPE_6__ {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval {TYPE_3__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int /*<<< orphan*/  val; } ;
struct TYPE_4__ {struct v4l2_ctrl* exposure; } ;
struct stimx274 {int /*<<< orphan*/  lock; TYPE_2__* client; TYPE_1__ ctrls; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IMX274_MIN_EXPOSURE_TIME ; 
 scalar_t__ FUNC0 (struct v4l2_ctrl*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct stimx274*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct stimx274*,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct stimx274* FUNC7 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd,
				   struct v4l2_subdev_frame_interval *fi)
{
	struct stimx274 *imx274 = FUNC7(sd);
	struct v4l2_ctrl *ctrl = imx274->ctrls.exposure;
	int min, max, def;
	int ret;

	FUNC5(&imx274->lock);
	ret = FUNC4(imx274, fi->interval);

	if (!ret) {
		/*
		 * exposure time range is decided by frame interval
		 * need to update it after frame interval changes
		 */
		min = IMX274_MIN_EXPOSURE_TIME;
		max = fi->interval.numerator * 1000000
			/ fi->interval.denominator;
		def = max;
		if (FUNC0(ctrl, min, max, 1, def)) {
			FUNC2(&imx274->client->dev,
				"Exposure ctrl range update failed\n");
			goto unlock;
		}

		/* update exposure time accordingly */
		FUNC3(imx274, ctrl->val);

		FUNC1(&imx274->client->dev, "set frame interval to %uus\n",
			fi->interval.numerator * 1000000
			/ fi->interval.denominator);
	}

unlock:
	FUNC6(&imx274->lock);

	return ret;
}