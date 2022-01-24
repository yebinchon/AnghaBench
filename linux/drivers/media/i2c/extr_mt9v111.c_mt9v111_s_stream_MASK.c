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
struct v4l2_subdev {int dummy; } ;
struct mt9v111_dev {int streaming; int pending; int /*<<< orphan*/  stream_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct mt9v111_dev*) ; 
 int FUNC1 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mt9v111_dev* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *subdev, int enable)
{
	struct mt9v111_dev *mt9v111 = FUNC4(subdev);
	int ret;

	FUNC2(&mt9v111->stream_mutex);

	if (mt9v111->streaming == enable) {
		FUNC3(&mt9v111->stream_mutex);
		return 0;
	}

	ret = FUNC1(subdev, enable);
	if (ret)
		goto error_unlock;

	if (enable && mt9v111->pending) {
		ret = FUNC0(mt9v111);
		if (ret)
			goto error_unlock;

		/*
		 * No need to update control here as far as only H/VBLANK are
		 * supported and immediately programmed to registers in .s_ctrl
		 */

		mt9v111->pending = false;
	}

	mt9v111->streaming = enable ? true : false;
	FUNC3(&mt9v111->stream_mutex);

	return 0;

error_unlock:
	FUNC3(&mt9v111->stream_mutex);

	return ret;
}